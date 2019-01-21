class AddCurrencyToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :amount, :monetize
    add_column :orders, :payment, :jsonb
    t.monetize :amount, currency: { present: false }
  end
end
