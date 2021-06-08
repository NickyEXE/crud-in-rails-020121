# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Kickboxer.create(name: "Jean Claude Van Damme", speed: 9, fist_size: 4, villain: false, missing_teeth: 0)

Kickboxer.create(name: "Ryu", speed: 6, fist_size: 8, villain: false, missing_teeth: 1)

puts "and this is just ruby code"

puts "Added two to database!"
