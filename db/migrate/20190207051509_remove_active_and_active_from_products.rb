class RemoveActiveAndActiveFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :active, :boolean
    remove_column :products, :active, :boolean
  end
end
