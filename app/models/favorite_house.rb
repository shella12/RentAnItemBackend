class FavoriteHouse < ApplicationRecord
  belongs_to :user
  belongs_to :house
  validates_presence_of :user_id, :house_id
end
