# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
country_list = [
  [ "Germany", 81831000 ],
  [ "France", 65447374 ],
  [ "Belgium", 10839905 ],
  [ "Netherlands", 16680000 ]
]
country_list.each do |name, population|
  Country.create( name: name, population: population )
end

Album.create(name: "Sgt. Pepper's Lonely Hearts Club Band", release_year: 1967)
Album.create(name: "Pet Sounds", release_year: 1966)
Album.create(name: "Revolver", release_year: 1966)
Album.create(name: "Highway 61 Revisited", release_year: 1965)
Album.create(name: "Rubber Soul", release_year: 1965)
Album.create(name: "What's Going On", release_year: 1971)
Album.create(name: "Exile on Main St.", release_year: 1972)
Album.create(name: "London Calling", release_year: 1979)
Album.create(name: "Blonde on Blonde", release_year: 1966)
Album.create(name: "The Beatles", release_year: 1968)

fruits = Category.create(name: "Fruits")
vegetables = Category.create(name: "Vegetables")
jams = Category.create(name: "Jams")
fruits.products.create(name: "Apple", price: 1)
fruits.products.create(name: "Banana", price: 2)
fruits.products.create(name: "Pineapple", price: 3)
fruits.products.create(name: "Raspberry", price: 1)
fruits.products.create(name: "Strawberry", price: 1)
vegetables.products.create(name: "Potato", price: 2)
vegetables.products.create(name: "Carrot", price: 1)
vegetables.products.create(name: "Broccoli", price: 2)
vegetables.products.create(name: "Cauliflower", price: 1)
jams.products.create(name: "Strawberry", price: 1)
jams.products.create(name: "Raspberry", price: 1)

grocery = Category.create(name: "Grocery")
grocery.products.create(name: 'Milk (1 liter)', weight: 1000, in_stock: true, price: 0.45, expiration_date: Date.today + 14.days)
grocery.products.create(name: 'Butter (250 g)', weight: 250, in_stock: true, price: 0.75, expiration_date: Date.today + 14.days)
grocery.products.create(name: 'Flour (1 kg)', weight: 1000, in_stock: false, price: 0.45, expiration_date: Date.today + 100.days)
grocery.products.create(name: 'Jelly Babies (6 x 300 g)', weight: 1500, in_stock: true, price: 4.96, expiration_date: Date.today + 1.year)
grocery.products.create(name: 'Super-Duper Cake Mix', in_stock: true, price: 11.12, expiration_date: Date.today + 1.year)
grocery.products.create(name: 'Eggs (12)', in_stock: true, price: 2, expiration_date: Date.today + 7.days)
grocery.products.create(name: 'Peanuts (8 x 200 g bag)', in_stock: false, weight: 1600, price: 17.49, expiration_date: Date.today + 1.year)