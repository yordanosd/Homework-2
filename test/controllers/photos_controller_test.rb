require 'test_helper'

 module PhotosControllerTest

   class IndexAction < ActionController::TestCase
     setup do
       # JSON headers
       @request.headers['Accept'] = Mime[:json]
       @request.headers['Content-Type'] = Mime[:json].to_s
       get :index, params: { user_id: 1, closet_id: 1}
     end

     test "#index can get photos given user_id = 1 and closet_id: 1 as params" do
       assert_response :success
     end

    #  test "#index returns json" do
    #    assert_match 'application/json', response.header['Content-Type']
    #  end
     #
    #  test "#index response.body returns an array with a collection of photos " do
    #    assert_match Array, Json.parse(response.body)
    #  end
     #
    #  test "#index response.body contains user with id of 1" do
    #    photos = JSON.parse(response.body) # an array with user info stored in hash
    #    assert_match photos.any? {|hash| hash["id"] == 1}, true
    #  end
   end
 end
