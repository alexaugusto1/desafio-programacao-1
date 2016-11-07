# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating sales..."

Sale.create(
  [
    { purchaser_name: 'Alex Augusto', item_description: 'R$30 Apples for R$10', item_price: 10, purchase_count: 2, 
      merchant_address: '42 Fake St', merchant_name: 'Apple Store'}, 
    { purchaser_name: 'Bilbo Bolseiro', item_description: 'R$50 Tea for R$30', item_price: 30, purchase_count: 8, 
      merchant_address: 'Shire', merchant_name: 'Shire Shopping'}, 
  ]
)

puts "Done!"
