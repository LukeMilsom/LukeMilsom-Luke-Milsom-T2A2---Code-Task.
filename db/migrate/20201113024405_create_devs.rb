class CreateDevs < ActiveRecord::Migration[6.0]
  def change
    create_table :devs do |t|
      t.string :dev_type
      t.string :service_type
      t.string :language_type
      t.string :listing_name
      t.text :summary
      t.string :location_town
      t.string :location_country
      t.integer :price, precision: 5, scale:2, default: 0

      t.timestamps
    end
  end
end
