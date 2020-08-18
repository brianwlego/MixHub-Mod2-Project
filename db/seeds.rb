# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Tracklist Test
f = Festival.create(name: "Ultra Miami", location: "Miami", date:2009-03-18)
f2 = Festival.create(name: "Coachella", location: "The Deseret", date:2009-10-18)

a = Artist.create(name: "Beyonce", img_url: "laksjdflskjf")
a2 = Artist.create(name: "Adele", img_url: "laksjdfasdflskjf")
a3 = Artist.create(name: "Whitney Houston", img_url: "laksjsdfsdflskjf")

t = Tracklist.create(name: 'Tracklist 1', artist_id: 1, festival_id: 1, user_id: 2, link: "blahblah", img_url: "blahblahhh", likes: 0)