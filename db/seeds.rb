# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.destroy_all
Product.destroy_all

category_list = [
  "Electrodomesticos",
  "Tecnología",
  "Terraza",
  "Dormitorio"
]

category_list.each do |name|
  Category.create(name: name)
end

product_list = [
  ["DVD", "Electrodomesticos", 12098],
  ["TV LCD", "Electrodomesticos", 34526],
  ["Radio FM", "Electrodomesticos", 35561],
  ["MacBook air", "Tecnología", 56663561],
  ["DELL Inspiron", "Tecnología", 56663561],
  ["HP lasert Jet 1122", "Tecnología", 563561],
  ["Sillón", "Terraza", 53561],
  ["Macetero", "Terraza", 56661],
  ["Cama de 2 plazas", "Dormitorio", 5666761],
  ["Cama de 1 1/2 plaza", "Dormitorio", 56761],
]

product_list.each do |name, category, price|
  Product.create(name: name, category: Category.find_by(name: category), price: price)
end
