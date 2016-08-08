require 'test_helper'

 module UserControllerTest

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

  #  class IndexJSONObject < ActionController::TestCase
  #    setup do
   #
  #      @request.headers['Accept'] = Mime::JSON
  #      @request.headers['Content-Type'] = Mime::JSON.to_s
   #
  #      get :index
  #      @body = JSON.parse(response.body)
  #    end
   #
  #  # determine the endpoint--figure out the outcome and build a test then create method
  #    test "returns an array of shipping estimates" do
   #
  #      assert_instance_of Array, @body
  #      assert_equal Hash, @body.map(&:class).first
  #    end
   #
  #    test "returns one object" do
  #      assert_equal 3, @body.length
  #    end
   #
  #    test "each object contains the relevant keys" do
  #      keys = %w( country destination_zip estimates id number_of_items order_id origin_zip tracking_info)
  #      assert_equal keys, @body.map(&:keys).flatten.uniq.sort
  #    end
  #  end
   #
  #  class ShowAction < ActionController::TestCase
  #    setup do
  #      @request.headers['Accept'] = Mime::JSON
  #      @request.headers['Content-Type'] = Mime::JSON.to_s
  #      get :show, id: shipping_requests(:order_one).id
  #    end
   #
  #    test "can get #show" do
  #      assert_response :success
  #    end
   #
  #    test "#show returns json" do
  #      assert_match 'application/json', response.header['Content-Type']
  #    end
  #  end
   #
  #  class ShowJSONObject < ActionController::TestCase
  #    setup do
  #      @request.headers['Accept'] = Mime::JSON
  #      @request.headers['Content-Type'] = Mime::JSON.to_s
   #
  #      get :show, id: shipping_requests(:order_one).id #requires id parameter due to the route
  #      @body = JSON.parse(response.body)
  #      @keys = %w( country destination_zip estimates id number_of_items order_id origin_zip tracking_info )
  #    end
   #
  #    test "has the right keys" do
  #      assert_equal @keys, @body.keys.sort
  #    end
   #
  #    test "has all of Shipping request's info" do
  #      @keys.each do |key|
  #        assert_equal shipping_requests(:order_one)[key], @body[key]
  #      end
  #    end
  #  end
   #
  #  class CreateAction < ActionController::TestCase
  #    setup do
  #      @request_one = shipping_requests(:order_one)
  #      @request_two = shipping_requests(:order_two)
  #      @request_three = shipping_requests(:order_three)
  #    end
   #
  #    test "can create new requests" do
  #      assert_difference('ShippingRequest.count') do
  #        post :create, {destination_zip: @request_one.destination_zip, origin_zip: @request_one.origin_zip,  number_of_items: @request_one.number_of_items, order_id: @request_one.order_id}
  #      end
  #    end
   #
  #  end
   #
  #  class NoRequestsFound < ActionController::TestCase
  #    setup do
  #      @request.headers['Accept'] = Mime::JSON
  #      @request.headers['Content-Type'] = Mime::JSON.to_s
   #
  #      get :show, id: 1000
  #      @body = JSON.parse(response.body)
  #    end
   #
  #    test "no request found is a 404 (not found)" do
  #      assert_response 404
  #    end
   #
  #    test "no request found is an empty array" do
  #      assert_equal [], @body
  #    end
  #  end
 end
