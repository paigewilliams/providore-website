# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create!([
  {"name": "Gruyere", "cost": "9.00", "country_of_origin": "France"},
  {"name": "Piave Vecchio", "cost": "7.00", "country_of_origin": "Italy"},
  {"name": "L'amuse Brabander", "cost": "13.00", "country_of_origin": "Holland"},
  {"name": "Coastal Cheddar", "cost": "6.00", "country_of_origin": "England"}
  ])
