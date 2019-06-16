require 'test_helper'

class EtcControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get etc_welcome_url
    assert_response :success
  end

end
