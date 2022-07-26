require "test_helper"

class TagTypeTest < ActiveSupport::TestCase
  test "should not save tag type without name" do
    tag_type = TagType.new
    assert_not tag_type.save, "Saved the tag type withou name"
  end

  test "valid tag type" do
    tag_type = TagType.new(name: "Base")
    assert tag_type.valid?
  end

  test "should save base tag type" do
    tag_type = TagType.new(name: "Base")
    assert tag_type.save
  end

end
