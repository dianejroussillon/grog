class RemoveCurrencyToOrders < ActiveRecord::Migration[5.2]
  def change
    # add_column :orders, :amount, :monetize
    # t.monetize :amount, currency: { present: false }
  end
end
