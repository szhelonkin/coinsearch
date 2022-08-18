class CreateAssetTags < ActiveRecord::Migration[7.0]
  def change
    create_table :asset_tags do |t|
      t.text :desc

      t.timestamps
    end
  end
end
