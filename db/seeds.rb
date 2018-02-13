# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CATEGORIES = ["Horror", "Crime Fiction", "Fantasy", "Romance", "Thriller", "Western", "Action", "Animation", "Mystery", "Superhero", "Adventure", "Romantic Comedy", "SciFi", "Documentary", "Film noir", "Comedy-Drama", "War", "Disaster", "Apocalyptic", "Comedy", "Musical"]

CATEGORIES.each do |category|
  Category.create!(name: category, image: "http://articleonepartners.com/wp-content/uploads/2015/06/1000px-Clapboard.svg_.png")
end

User.create!(username: "Username", email: "myemail@email.com", password: "Password")
User.create!(username: "Admin", email: "myemail@email.com", password: "Password", role: 1)
