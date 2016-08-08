class PhotosController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update]

  def index
    requests = Photo.where(closet_id: params[:closet_id])
    #render as JSON EXCEPT for the created/updated_at. You can also use ONLY instead of except.
    render json: requests.as_json(except: [:request, :created_at, :updated_at])
  end

  def show
    request = Photo.find(params[:id])

    if(request.closet_id == params[:closet_id].to_i)
      render json: request.as_json(except: [:request, :created_at, :updated_at])
    else
      render json: [], status: :not_found
    end
  end

  def create
    request = Photo.new
    binding.pry
    request.closet_id = params[:closet_id]
    request.photo_url = params[:photo_url]
    request.save

    if request.present?
      render json: request.as_json(except: [:request, :created_at, :updated_at])
    else
      render json: [], status: :not_found
    end
  end

end
