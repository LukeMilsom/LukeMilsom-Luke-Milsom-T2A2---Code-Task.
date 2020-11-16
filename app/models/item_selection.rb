class ItemSelection < ApplicationRecord
  belongs_to :dev
  belongs_to :cart

  def total_price
    dev.price.to_i * quantity.to_i
  end
end
