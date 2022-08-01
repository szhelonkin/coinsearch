class TagType < ApplicationRecord
  validates :name, presence: true
  has_many :tag
end
