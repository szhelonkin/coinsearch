class AssetTag < ApplicationRecord
  belongs_to :tag
  belongs_to :asset
end
