class AddAssetTagsRefToAssets < ActiveRecord::Migration[7.0]
  def change
    add_column :asset_tags, :asset_id, :integer, index: true
    add_foreign_key :asset_tags, :assets, column: :asset_id
  end
end
