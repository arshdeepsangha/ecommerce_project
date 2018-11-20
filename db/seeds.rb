# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'json'


# file = File.read "/Users/arshdeepsinghsangha/RailsProject/cars/cars/cars.json"
# data_set = JSON.parse(file)

# cat = Category.create(name: "Supercar")
# d = Deal.create(name: "Recently Added" ,deal_rate: 1.0 )

# data_set.each do |car|

#     Vehicle.create(manufacturer: car["manufacturer"],model: car["model"],price: car["price"],body_type: car["body_type"],engine: car["engine"],transmission: car["transmission"],stock: car["stock"],deal: d ,category: cat)

#     puts Vehicle.count

# end


AdminUser.create!(email: 'arsh98000@gmail.com', password: 'password!', password_confirmation: 'password!') if Rails.env.development?