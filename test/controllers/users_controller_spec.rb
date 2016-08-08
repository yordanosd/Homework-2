require 'test_helper'

 # module UsersControllerTest

   class IndexAction < ActionController::TestCase
     setup do
       # JSON headers
       @request.headers['Accept'] = Mime::JSON
       @request.headers['Content-Type'] = Mime::JSON.to_s
       get :index
     end

     test "can get all users #index" do
       assert_response :success
     end

     test "#index returns json" do
       assert_match 'application/json', response.header['Content-Type']
     end
   end
 # end
