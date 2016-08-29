class PhotosController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :upvote]

  def upvote
    photo = Photo.find(params[:photo_id])
    updated_vote_count = photo.votes += 1
    photo.update(votes: updated_vote_count)

    response = []
    render json: response.as_json()

  end

  def index
    requests = Photo.where(closet_id: params[:closet_id])
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
