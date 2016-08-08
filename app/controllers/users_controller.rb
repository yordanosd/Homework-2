class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]
  # skip_before_filter :verify_authenticity_token, :only => [:index, :show]

    def index
      requests = User.all
      #render as JSON EXCEPT for the created/updated_at. You can also use ONLY instead of except.
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
      request = User.new
      request.uid = params[:uid]
      request.save

      if request.present?
        render json: request.as_json(except: [:request, :created_at, :updated_at])
      else
        render json: [], status: :not_found
      end
    end
end
