# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cat1 = Category.create(name: "VB")
10.times do |n|
  n.odd? ? cat1.scores.create(brightness: n, blur: n) : cat1.scores.create(brightness: n*2, blur: n*2)
end

cat2 = Category.create(name: "DB")

10.times do |n|
  n.odd? ? cat2.scores.create(brightness: n, blur: n) : cat2.scores.create(brightness: n*2, blur: n*2)
end
