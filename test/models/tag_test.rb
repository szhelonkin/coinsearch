require "test_helper"

class TagTest < ActiveSupport::TestCase
  test "should not save tag without name" do
    tag = Tag.new
    assert_not tag.save, "Saved the tag without name"
  end

  test "valid tag" do
    tag_type = TagType.new(name: "Base")
    tag_type.save
    tag = Tag.new(name: "Base", tag_type_id: tag_type.id)
    assert tag.valid?
  end

  test "should save base tag" do
    tag_type = TagType.new(name: "Base")
    tag_type.save
    tag = Tag.new(name: "Base", tag_type_id: tag_type.id)
    assert tag.save
  end

end
