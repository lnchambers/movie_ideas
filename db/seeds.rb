# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CATEGORIES = ["Crime Fiction", "Horror", "Fantasy", "Romance", "Thriller", "Western", "Action", "Animation", "Mystery", "Superhero", "Adventure", "Romantic Comedy", "SciFi", "Documentary", "Film noir", "Comedy-Drama", "War", "Disaster", "Apocalyptic", "Comedy", "Musical"]
IMAGES = [
          "https://www.thefamouspeople.com/profiles/thumbs/johann-pachelbel-2.jpg",
          "https://az616578.vo.msecnd.net/files/2017/01/12/636197803362845005-554267949_movies%202.jpg",
          "https://www.nighthelper.com/wp-content/uploads/2017/01/movie_night_image.jpg",
          "https://1k9gl1yevnfp2lpq1dhrqe17-wpengine.netdna-ssl.com/wp-content/uploads/2017/12/coco.jpg",
          "http://static2.uk.businessinsider.com/image/5949486389d0e21314418023/it-sounds-like-a-new-super-mario-movie-is-on-the-way-from-the-team-behind-despicable-me.jpg",
          "http://runt-of-the-web.com/wordpress/wp-content/uploads/2016/04/wtf-pictures-1.jpg",
          "https://cf.ltkcdn.net/cats/images/std/211655-675x450-Kitten-peeking.jpg",
          "https://static.pexels.com/photos/416160/pexels-photo-416160.jpeg",
          "https://www.funnypica.com/wp-content/uploads/2015/07/Funny-Kitten-Pictures-26-570x499.jpg"
         ]

CATEGORIES.each do |category|
  Category.create!(name: category, image: "http://articleonepartners.com/wp-content/uploads/2015/06/1000px-Clapboard.svg_.png")
end

IMAGES.each do |image|
  Image.create!(url: image)
end

User.create!(username: "User", email: "user@email.com", password: "User")
User.create!(username: "Admin", email: "admin@email.com", password: "Admin", role: 1)
