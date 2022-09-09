class AddStatusToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :status, :integers, default: 0
  end
end
