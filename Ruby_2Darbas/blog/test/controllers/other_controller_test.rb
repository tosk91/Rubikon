require 'test_helper'

class OtherControllerTest < ActionDispatch::IntegrationTest
  test "should get data" do
    get other_data_url
    assert_response :success
  end

end
