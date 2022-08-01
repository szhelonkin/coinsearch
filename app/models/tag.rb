class Tag < ApplicationRecord
  validates :name, presence: true
  belongs_to :tag_type
end
