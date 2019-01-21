json.extract! order, :id, :first_name, :last_name, :email, :phone_number, :address, :code_postal, :city, :product_id, :created_at, :updated_at
json.url order_url(order, format: :json)
