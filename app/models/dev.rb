class Dev < ApplicationRecord
    belongs_to :user, optional: true

    mount_uploader :image, ImageUploader

    validates :listing_name, :dev_type, :service_type, 
      :language_type, :listing_name, :location_town, 
      :location_country, :price, presence: true

     validates :summary, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed."}
     validates :listing_name, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed."}
     validates :price, numericality: { only_integer: true}, length: {maximum: 7}

     DEV_TYPE = %w{ Front_End Back_End }


end


