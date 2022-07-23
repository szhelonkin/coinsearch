class Asset < ApplicationRecord
  validates :name, presence: true
end
