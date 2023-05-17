class House < ApplicationRecord
  has_one_attached :picture
  validates_presence_of :name, :price, :picture, :description, :owner_name
  def picture_url
    Rails.application.routes.url_helpers.url_for(picture) if picture.attached?
  end
end
