require "test_helper"

class TagTest < ActiveSupport::TestCase
  test "should not save tag without name" do
    tag = Tag.new
    assert_not tag.save, "Saved the tag without name"
  end

  test "valid tag" do
    tag = Tag.new(name: "Base")
    assert tag.valid?
  end

  test "should save base tag" do
    tag = Tag.new(name: "Base")
    assert tag.save
  end

end
