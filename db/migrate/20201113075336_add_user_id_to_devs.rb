class AddUserIdToDevs < ActiveRecord::Migration[6.0]
  def change
    add_column :devs, :user_id, :integer
  end
end
