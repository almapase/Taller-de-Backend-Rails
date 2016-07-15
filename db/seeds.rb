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
  ["Electrodomesticos", 10],
  ["Tecnología", 30],
  ["Terraza", 10],
  ["Dormitorio", 5]
]

category_list.each do |name, discount|
  Category.create(name: name, discount: discount)
end

product_list = [
  ["DVD", "Electrodomesticos", 12098, true],
  ["TV LCD", "Electrodomesticos", 34526, false],
  ["Radio FM", "Electrodomesticos", 35561, true],
  ["MacBook air", "Tecnología", 56663561, false],
  ["DELL Inspiron", "Tecnología", 56663561, true],
  ["HP lasert Jet 1122", "Tecnología", 563561, false],
  ["Sillón", "Terraza", 53561, true],
  ["Macetero", "Terraza", 56661, false],
  ["Cama de 2 plazas", "Dormitorio", 5666761, true],
  ["Cama de 1 1/2 plaza", "Dormitorio", 56761, false],
]

product_list.each do |name, category, price, premium|
  Product.create(name: name, category: Category.find_by(name: category), price: price, premium: premium)
end
