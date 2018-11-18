require 'test_helper'

class LicenseControllerTest < ActionDispatch::IntegrationTest
  test "should get upload" do
    get license_upload_url
    assert_response :success
  end

end
