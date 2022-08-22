class Asset < ApplicationRecord
  validates :name, presence: true
  belongs_to :asset_tag
end
