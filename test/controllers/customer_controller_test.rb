require 'test_helper'

class CustomerControllerTest < ActionDispatch::IntegrationTest
  test "should get signup" do
    get customer_signup_url
    assert_response :success
  end

  test "should get signin" do
    get customer_signin_url
    assert_response :success
  end

  test "should get signout" do
    get customer_signout_url
    assert_response :success
  end

end
