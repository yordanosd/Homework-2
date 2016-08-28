class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :index]

    def index
      requests = User.all
      render json: requests.as_json(except: [:request, :created_at, :updated_at])
    end

    def show
      request = User.find_by(uid: params[:uid]) || User.find_by(id: params[:id])
      if request.is_a?(User) #could also be if request.present?
        render json: request.as_json(except: [:request, :created_at, :updated_at])
      else
        render json: [], status: :not_found
      end
    end

    def create
      user = User.new
      user.uid = params[:uid]
      user.save

      if user.present?
        render json: user.as_json(except: [:request, :created_at, :updated_at])
      else
        render json: [], status: :not_found
      end
    end

    def outfitStories
      # find closet that does not belong to the current user
      closets = Closet.where.not(user_id: params[:id])

      # iterate through the response and store the user, event
        # and collection of photos for each closet
      outfitStoriesResponse = closets.map{|closet|
        user = User.find(closet.user_id).uid
        event = closet.description
        outfits = Photo.where(closet_id: closet.id).select(&:present?)

        result = {
          user: user,
          event: event,
          outfits: outfits
        }
      }.reject(&:empty?)

      # photos = Photo.all.group_by &:closet_id
      render json: outfitStoriesResponse.as_json(except: [:request, :created_at, :updated_at])
    end


    def userStories
      user_closets = Closet.where(user_id: params[:id])
      user = User.find_by(uid: params[:uid]) || User.find_by(id: params[:id])

      user_closets_response = user_closets.map{|closet|
        event = closet.description
        outfits = Photo.where(closet_id: closet.id)

        result = {
          user: user.id,
          event: event,
          outfits: outfits
        }
      }.reject(&:empty?)

      render json: user_closets_response.as_json(except: [:request, :created_at, :updated_at])


    end

    private

    def billing_params
      params.permit(:uid)
    end

end

#
# {        "results" => [
#                 {
#                   "organization"=>"Broadcast Instructional Mechanical",
#                   "id" => 12348124,
#                   "users" => [
#                     {"user"=>{"gender"=>"female","name"=>
#                       {"title"=>"miss","first"=>"marga","last"=>"seegers"},
#                       "location"=>{"street"=>"9234 kintgenshaven","city"=>"epe","state"=>"groningen","zip"=>"24360"},
#                       "email"=>"marga.seegers25@example.com","username"=>"orangeleopard377","password"=>"427900","salt"=>"KrIEhHan",
#                       "md5"=>"589a574553250be33f3b1170624ad2d1","sha1"=>"b95ebe39ae6119c5d578938b2d0be8abf674d22c",
#                       "sha256"=>"591584f0bcd6ab1700b59f7bad4ef84917d9ad1270a5a3f4fdd0519fd6d6f37e",
#                       "registered"=>"1412818529","dob"=>"368162464","phone"=>"(468)-937-2959","cell"=>"(971)-550-2808",
#                       "BSN"=>"95632864","picture"=>{"large"=>"http=>//api.randomuser.me/portraits/women/35.jpg",
#                       "medium"=>"http=>//api.randomuser.me/portraits/med/women/35.jpg","thumbnail"=>"http://api.randomuser.me/portraits/thumb/women/35.jpg"},
#                       "version"=>"0.6","nationality"=>"NL"},"seed"=>"0e4de8b1953a999b06"},
#                   {"user"=>{"gender"=>"female","name"=>{"title"=>"ms","first"=>"kristianne","last"=>"van den oetelaar"},
#                     "location"=>{"street"=>"4802 donkerstraat","city"=>"sint-michielsgestel","state"=>"groningen","zip"=>"61965"},
#                     "email"=>"kristianne.van den oetelaar12@example.com","username"=>"ticklishmeercat405","password"=>"dolores",
#                     "salt"=>"KwAVXd3o","md5"=>"5cbc80332e3523dd9d90cc116daf9d8e","sha1"=>"4d3c0dd6123eee0dfd4d2f1fd02d204cdbc66ea3",
#                     "sha256"=>"237dd75ac4edf8655fc1df2ecdcbb9fc8bda6f13874274321d5f016422bd845e","registered"=>"975686912","dob"=>"1213287452",
#                     "phone"=>"(544)-595-2864","cell"=>"(332)-676-7259","BSN"=>"10118205","picture"=>
#                     {"large"=>"http://api.randomuser.me/portraits/women/21.jpg","medium"=>"http://api.randomuser.me/portraits/med/women/21.jpg",
#                       "thumbnail"=>"http://api.randomuser.me/portraits/thumb/women/21.jpg"},"version"=>"0.6","nationality"=>"NL"}},
#                       {"user"=>{"gender"=>"female","name"=>{"title"=>"ms","first"=>"livia","last"=>"stout"},
#                       "location"=>{"street"=>"4913 hanengeschrei","city"=>"bellingwedde","state"=>"noord-holland","zip"=>"16963"},
#                       "email"=>"livia.stout85@example.com","username"=>"smallgoose733","password"=>"lotus",
#                       "salt"=>"aY8HrNYd","md5"=>"7d8c37997f09c122794651b1ec841491","sha1"=>"85e48eae90f24263c213d0d40a5bdc44b082e6de",
#                       "sha256"=>"75d814449715a173c01df5c77a37ec644c5fcc195d390fe3d6a1dc5170a3c671","registered"=>"1129407252","dob"=>"708057390",
#                       "phone"=>"(932)-320-9543","cell"=>"(161)-271-2230","BSN"=>"56110925","picture"=>{"large"=>"http://api.randomuser.me/portraits/women/68.jpg",
#                         "medium"=>"http://api.randomuser.me/portraits/med/women/68.jpg","thumbnail"=>"http://api.randomuser.me/portraits/thumb/women/68.jpg"},
#                         "version"=>"0.6","nationality"=>"NL"}}]
#                       }
#                     ]}
