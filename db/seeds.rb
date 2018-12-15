# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Review.destroy_all

  until Product.count >= 50
    Product.create(name: Faker::Food.ingredient, cost: Faker::Number.digit, country_of_origin: Faker::Address.country)
  end

  products = Product.all
  until Review.count >= 250
  Review.create(author: Faker::Name.first_name, content_body: Faker::Lorem.characters(250), rating: Faker::Number.between(1, 5), product_id: products[rand(products.length)].id)
end


p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
