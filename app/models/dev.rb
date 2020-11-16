class Dev < ApplicationRecord
  before_destroy :not_referenced_by_any_item_selection
    belongs_to :user, optional: true
    has_many :item_selections
    mount_uploader :image, ImageUploader

    validates :listing_name, :dev_type, :service_type, 
      :language_type, :listing_name, :location_town, 
      :location_country, :price, presence: true

     validates :summary, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed."}
     validates :listing_name, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed."}
     validates :price, numericality: { only_integer: true}, length: {maximum: 7}

     DEV_TYPE = %w{ Front_End Back_End }


private 

def not_referenced_by_any_item_selection
  unless item_selections.empty?
  errors.add(:base, "Items present")
  throw :abort
  end
end

end


