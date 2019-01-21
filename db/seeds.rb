# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Order.destroy_all
Product.destroy_all
puts 'Creating the Grog'

# diane = User.create!(first_name: "Diane", email: 'diane@gmail.com', password: 'dianejr')
# patience = User.create!(first_name: "Patience", email: 'patience@gmail.com', password: 'patiencegst')
# jules = User.create!(first_name: "Jules", email: 'jules@gmail.com', password: 'julesbtx')
# abdel = User.create!(first_name: "Abdel", email: 'abdel@gmail.com', password: 'abdel21')


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
)

grog.save!



