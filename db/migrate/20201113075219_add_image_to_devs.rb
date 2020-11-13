class AddImageToDevs < ActiveRecord::Migration[6.0]
  def change
    add_column :devs, :image, :string
  end
end
