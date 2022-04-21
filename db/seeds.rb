# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
mcdo = { name: "Mcdo", address: "7 Rue du machin", phone_number:"0788990077", category: "french" }
just_eat =  { name: "Just Eat", address: "99 rue bidule", phone_number:"0711223344", category: "belgian"}
sushi = { name: "Sushi", address: "2 rue du poisson", phone_number:"0755667788", category: "japanese"}

[ mcdo, just_eat, sushi ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
