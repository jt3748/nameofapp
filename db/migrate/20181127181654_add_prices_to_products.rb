class AddPricesToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :prices, :decimal
  end
end
