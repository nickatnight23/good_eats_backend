class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :location_id

 belongs_to :location
end
