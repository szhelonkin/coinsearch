require "test_helper"

class AssetTest < ActiveSupport::TestCase
  test "should not save asset without name" do
    asset = Asset.new
    assert_not asset.save, "Saved the asset without name."
  end

  test "valid asset" do
    asset_tag = AssetTag.new()
    asset_tag.save

    asset = Asset.new(name: "Bitcoin")
    asset.save
    assert asset.valid?
  end

end
