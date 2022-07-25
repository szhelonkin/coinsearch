require "test_helper"

class TagTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get tag_types_list_url
    assert_response :success
  end
end
