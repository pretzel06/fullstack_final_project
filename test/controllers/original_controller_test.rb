require 'test_helper'

class OriginalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get original_index_url
    assert_response :success
  end

  test "should get show" do
    get original_show_url
    assert_response :success
  end

end
