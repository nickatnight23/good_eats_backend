class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :location_id

  has_many :restaurants
end
