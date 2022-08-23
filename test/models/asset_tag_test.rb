require "test_helper"

class AssetTagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "valid asset tag" do
    tag_type = TagType.new(name: "Base")
    tag_type.save
    tag = Tag.new(name: "Base", tag_type_id: tag_type.id)

    asset = Asset.new(name: "Bitcoin")
    asset.save

    asset_tag = AssetTag.new(tag_id: tag.id, asset_id: asset.id)
    asset_tag.save

    #puts asset_tag.tag_id

    #assert asset_tag.valid?
  end

end
