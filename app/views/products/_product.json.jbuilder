json.extract! product, :id, :name, :ingredient_1, :ingredient_2, :ingredient_3, :ingredient_4, :quantity_1, :quantity_2, :quantity_3, :quantity_4, :content_1, :content_2, :content_3, :content_4, :description_1, :description_2, :description_3, :description_4, :quantity_asked, :sub_description, :created_at, :updated_at
json.url product_url(product, format: :json)
