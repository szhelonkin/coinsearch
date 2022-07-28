require "test_helper"

class TagsControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get tags_list_url
    assert_response :success
  end
end
