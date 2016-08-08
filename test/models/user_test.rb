require 'test_helper'
require 'pry'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # test "validations: uid attribute can't be blank" do
  #   user = User.new
  #
  #   assert_not user.valid? #(assert user is not valid then check why)
  #   # assert user.errors.keys.include?(:uid), "uid is not in the errors hash"
  # end

  @user1 = User.create({uid: 1})

  
  describe "user" do
    it "should return an instance of user" do
      assert_match @user, User
    end
  end
end
