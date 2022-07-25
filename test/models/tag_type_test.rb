require "test_helper"

class TagTypeTest < ActiveSupport::TestCase
  test "should not save tag type without name" do
    tag_type = TagType.new
    assert_not tag_type.save, "Saved the tag type withou name"
  end
end
