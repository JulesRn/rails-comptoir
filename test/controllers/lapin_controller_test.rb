require 'test_helper'

class LapinControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get lapin_show_url
    assert_response :success
  end

end
