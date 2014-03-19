class AddCartIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :cart_id, :integer
    remove_column :carts, :order_id, :integer
  end
end
