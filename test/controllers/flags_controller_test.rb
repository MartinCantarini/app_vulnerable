require 'test_helper'

class FlagsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get flags_create_url
    assert_response :success
  end

  test "should get show" do
    get flags_show_url
    assert_response :success
  end

end
