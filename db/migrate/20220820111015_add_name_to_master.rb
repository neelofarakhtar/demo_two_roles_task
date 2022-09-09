class AddNameToMaster < ActiveRecord::Migration[6.0]
  def change
    add_column :masters, :name, :string
  end
end
