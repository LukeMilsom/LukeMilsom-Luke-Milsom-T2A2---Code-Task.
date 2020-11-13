class AddImagesToDevs < ActiveRecord::Migration[6.0]
  def change
    add_column :devs, :images, :json
  end
end
