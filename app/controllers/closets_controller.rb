class ClosetsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update]

  def index
    requests = Closet.where(user_id: params[:user_id])
    render json: requests.as_json(except: [:request, :created_at, :updated_at])
  end

  def show
    request = Closet.where("id = ? AND user_id = ?", params[:id], params[:user_id])
    if !request.empty?
      render json: request.as_json(except: [:request, :created_at, :updated_at])
    else
      render json: [], status: :not_found
    end
  end

  def create
    request = Closet.new
    request.user_id = params[:user_id]
    request.description = params[:description]
    request.save

    if request.present?
      render json: request.as_json(except: [:request, :created_at, :updated_at])
    else
      render json: [], status: :not_found
    end
  end

  def update
    closet = Closet.find(params[:id])
    if closet.update(closet_params)
      request = {update: closet, update_status: "success"}
      render json: request.as_json(except: [:request, :created_at, :updated_at])
    else
      render json: [], status: :not_found
    end
  end

  def destroy
    closet = Closet.find(params[:id])
    closet.destroy

  end

  private

    def closet_params
      params.permit(:description)
    end

end
