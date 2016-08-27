require 'test_helper'
require 'pry'

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    binding.pry
    assert true
  end

  # test "validations: uid attribute can't be blank" do  #   user = User.new
  #
  #   assert_not user.valid? #(assert user is not valid then check why)  #   # assert user.errors.keys.include?(:uid), "uid is not in the errors hash"  # end
  #
  # @user1 = User.create({uid: 1})
  #
  #
  # describe "user" do
  #   it "should return an instance of " do
  #     ups = ActiveShipping::UPS.new(login: ENV["UPS_LOGIN"], password: ENV["UPS_PASSWORD"], key: ENV["UPS_KEY"])
  #     origin = ActiveShipping::Location.new(@origin)
  #     destination = ActiveShipping::Location.new(@destination)
  #     package = ActiveShipping::Package.new(20* 16, [2, 2, 2])
  #
  #     response = @ups.find_rates(origin, destination, package)
  #     result = response.rates.sort_by(&:price).collect {|rate| [rate.service_name, rate.price]}
  #
  #     shipping_rates = Shipping.find(origin, destination, packages)
  #     assert_match Hash, origin.class
  #   end
#   end
end
