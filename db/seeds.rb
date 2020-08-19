# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Festival.delete_all
Artist.delete_all
Tracklist.delete_all


#Tracklist Test
f = Festival.create(name: "Ultra Miami", location: "Miami", date:"2009-03-18")
f2 = Festival.create(name: "Coachella", location: "The Deseret", date:"2009-10-18")

a = Artist.create(name: "Beyonce", img_url: "https://pyxis.nymag.com/v1/imgs/6c0/570/056961772f9239c7ad26e784b020e410ae-beyonce.rsquare.w1200.jpg")
a2 = Artist.create(name: "Adele", img_url: "https://www.nme.com/wp-content/uploads/2020/01/2020_adele_getty_2000x1270.jpg")
a3 = Artist.create(name: "Whitney Houston", img_url: "https://i.pinimg.com/564x/f6/5e/30/f65e30f5157bedf02daa416ad4966f60.jpg")

t = Tracklist.create(name: 'Tracklist 1', artist_id: 1, festival_id: 1, user_id: 2, link: "blahblah", img_url: "blahblahhh", likes: 0)