class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number
      t.string :address
      t.integer :code_postal
      t.string :city
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
