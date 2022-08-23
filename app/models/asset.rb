class Asset < ApplicationRecord
  validates :name, presence: true
  has_many :asset_tags
  has_many :tags, through: :asset_tags
end
