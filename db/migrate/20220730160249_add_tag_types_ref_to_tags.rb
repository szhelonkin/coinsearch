class AddTagTypesRefToTags < ActiveRecord::Migration[7.0]
  def change
    add_column :tags, :tag_type_id, :integer, index: true
    add_foreign_key :tags, :tag_types, column: :tag_type_id
  end
end
