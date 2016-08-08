class ClosetsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update]

  def index
    requests = Closet.where(user_id: params[:user_id])
    #render as JSON EXCEPT for the created/updated_at. You can also use ONLY instead of except.
    render json: requests.as_json(except: [:request, :created_at, :updated_at])
  end

  def show
    request = Closet.where("id = ? AND user_id = ?", params[:id], params[:user_id])
    if !request.empty? #could also be if request.present?
      render json: request.as_json(except: [:request, :created_at, :updated_at])
    else
      render json: [], status: :not_found
    end

  #   begin
  #      usps = Carrier.estimate_usps_shipping(items, state, city, zip)
  #      ups = Carrier.estimate_ups_shipping(items, state, city, zip)
  #      estimate = {
  #        "usps" => usps,
  #        "ups" => ups
  #      }
  #      render json: estimate.as_json, :status => :ok
  #  rescue ActiveShipping::ResponseError
  #      render json: [], :status => :bad_request
  #  end
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
      response = {update: closet, update_status: "success"}
      render json: response.as_json(except: [:request, :created_at, :updated_at])
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
