require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get catch_404" do
    get welcome_catch_404_url
    assert_response :success
  end

end
