Order.destroy_all
Product.destroy_all
puts 'Creating the Grog'

grog = Product.create!(
  name: 'Grog',
  sub_description: 'Le meilleur Grog au monde',
  ingredient_1: 'Rhum',
  ingredient_2: 'Miel',
  ingredient_3: 'Citron',
  quantity_1: 1,
  quantity_2: 2,
  quantity_3: 3,
  content_1: 1,
  content_2: 250,
  description_1: 'Rhum de martinique',
  description_2: 'Miel fait par des abeilles',
  description_3: 'Citron made in france',
  price_cents: 2000.00,
  quantity: 1000
)

grog.save!



