class AddAssetsRefToAssetTags < ActiveRecord::Migration[7.0]
  def change
    add_column :assets, :asset_tag_id, :integer, index: true
    add_foreign_key :assets, :asset_tags, column: :asset_tag_id
  end
end
