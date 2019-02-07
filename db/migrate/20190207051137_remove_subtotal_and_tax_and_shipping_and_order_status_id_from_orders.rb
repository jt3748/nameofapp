class RemoveSubtotalAndTaxAndShippingAndOrderStatusIdFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :subtotal, :decimal, precision: 12, scale: 3
    remove_column :orders, :tax, :decimal, precision: 12, scale: 3
    remove_column :orders, :shipping, :decimal, precision: 12, scale: 3
    remove_reference :orders, :order_status, foreign_key: true
  end
end
