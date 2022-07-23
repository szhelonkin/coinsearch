require "test_helper"

class AssetTest < ActiveSupport::TestCase
  test "should not save asset without name" do
    asset = Asset.new
    assert_not asset.save, "Saved the asset without name."
  end
end
