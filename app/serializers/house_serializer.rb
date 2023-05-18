class HouseSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :description, :owner_name, :price, :picture, :picture_url, :created_at, :updated_at
end
