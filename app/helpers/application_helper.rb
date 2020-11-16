module ApplicationHelper
    def cart_count_over_one
        if @cart.item_selections.count > 0
          return "<span class='tag is-dark'>#{@cart.item_selections.count}</span>".html_safe
        end
      end
    
      def cart_has_items
        return @cart.item_selections.count > 0
      end
end
