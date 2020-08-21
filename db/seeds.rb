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
f = Festival.create(name: "Ultra", location: "Miami", date:"2019-03-18")
f2 = Festival.create(name: "Coachella", location: "Indio, CA", date:"2019-10-18")

a = Artist.create(name: "Beyonce", img_url: "https://pyxis.nymag.com/v1/imgs/6c0/570/056961772f9239c7ad26e784b020e410ae-beyonce.rsquare.w1200.jpg")
a2 = Artist.create(name: "Marshmello", img_url: "https://yt3.ggpht.com/a/AATXAJyYwdrvyu-OxhtiG3Ju3Wocuy07xT64dW22NGTH4Q=s900-c-k-c0xffffffff-no-rj-mo")
a3 = Artist.create(name: "David Guetta", img_url: "https://static.billboard.com/files/media/David-Guetta-press-by-Guerin-Blask-2019-billboard-1548-1024x677.jpg")
a4 = Artist.create(name: "Alesso", img_url: "https://d3vhc53cl8e8km.cloudfront.net/hello-staging/wp-content/uploads/2014/05/14220601/iXnq55NQDaVXfN3drWkS9tGxYRiAMwwSnwBpTOJ1-972x597.jpeg")
