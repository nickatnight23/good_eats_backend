class Restaurant < ApplicationRecord
    belongs_to :location
    has_one_attached :image_url
end
