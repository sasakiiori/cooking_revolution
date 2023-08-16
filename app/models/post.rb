class Post < ApplicationRecord
  scope :publics, -> { where(status: true) }
  has_one_attached :image
  belongs_to :customer
  has_many :favorites
  has_many :tags

  def get_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/sample.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
      image.variant(resize_to_limit: [width, height]).processed
  end
end
