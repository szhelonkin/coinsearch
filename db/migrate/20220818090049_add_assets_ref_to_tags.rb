class AddAssetsRefToTags < ActiveRecord::Migration[7.0]
  def change
    add_column :asset_tags, :tag_id, :integer, index: true
    add_foreign_key :asset_tags, :tags, column: :tag_id
  end
end
