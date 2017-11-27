require 'test_helper'

class OthersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get others_index_url
    assert_response :success
  end

end
