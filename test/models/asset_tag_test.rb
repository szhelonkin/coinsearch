require "test_helper"

class AssetTagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "valid asset tag" do
    asset_tag = AssetTag.new()
    asset_tag.save

    assert asset_tag.valid?
  end

end
