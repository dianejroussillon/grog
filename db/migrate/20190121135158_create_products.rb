class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :ingredient_1
      t.string :ingredient_2
      t.string :ingredient_3
      t.string :ingredient_4
      t.integer :quantity_1
      t.integer :quantity_2
      t.integer :quantity_3
      t.integer :quantity_4
      t.integer :content_1
      t.integer :content_2
      t.integer :content_3
      t.integer :content_4
      t.text :description_1
      t.text :description_2
      t.text :description_3
      t.text :description_4
      t.integer :quantity_asked
      t.text :sub_description

      t.timestamps
    end
  end
end
