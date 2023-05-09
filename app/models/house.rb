class House < ApplicationRecord
    validates_presence_of :name, :price, :picture, :description, :owner_name
end
