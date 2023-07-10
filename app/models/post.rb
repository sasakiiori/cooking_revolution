class Post < ApplicationRecord
  scope :publics, -> { where(status: true) }
  has_one_attached :image
  belongs_to :customer
end
