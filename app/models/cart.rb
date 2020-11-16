class Cart < ApplicationRecord
    has_many :item_selections, dependent: :destroy

    def add_dev(dev)
        current_item = item_selections.find_by(dev_id: dev.id)
        if current_item
            current_item.increment(:quantity)
          else
              current_item = item_selections.build(dev_id: dev.id)
          end
          current_item
        end
      
        def total_price
          item_selections.to_a.sum { |item| item.total_price }
        end
      
      end
