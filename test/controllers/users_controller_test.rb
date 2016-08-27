require 'test_helper'

 module UsersControllerTest

   class IndexAction < ActionController::TestCase
     setup do
       # JSON headers
       @request.headers['Accept'] = Mime[:json]
       @request.headers['Content-Type'] = Mime[:json].to_s
       get :index
     end

     test "can get all users #index" do
       assert_response :success
     end

     test "#index returns json" do
       assert_match 'application/json', response.header['Content-Type']
     end

     test "#index response.body returns an array with a collection of users " do
       assert_equal Array, JSON.parse(response.body).class
     end

     test "#index response.body contains user with id of 1" do
       users = JSON.parse(response.body) # an array with user info stored in hash
       assert_equal users.any? {|hash| hash["id"] == 1}, true
     end
   end
 end
