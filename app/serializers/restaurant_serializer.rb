class RestaurantSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :description, :location_id, :image_url

 belongs_to :location
 def image_url
  if object.image_url.attached?
    {
      url: rails_blob_url(object.image_url)
    }
  end
end
end

end
