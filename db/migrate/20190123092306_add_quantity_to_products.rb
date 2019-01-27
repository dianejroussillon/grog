class AddQuantityToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :quantity, :integer
    remove_column :products, :quantity_asked
  end
end
