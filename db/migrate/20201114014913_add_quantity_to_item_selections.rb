class AddQuantityToItemSelections < ActiveRecord::Migration[6.0]
  def change
    add_column :item_selections, :quantity, :integer, default: 1
  end
end
