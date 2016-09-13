# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Favourite.delete_all
User.delete_all
Show.delete_all

s1 = Show.create( title: "Dave's Diner", series: 12, description: "Pile of dump that's been put out to fill our 6pm slot against better shows", image: "dave-looking-stressed.jpg", programmeID: "PleODmp" )
s2 = Show.create( title: "Jeff's Jumpers", series: 5, description: "Jeff travels round Sussex trying on different styles of jumpers", image: "jeff-punching-goat.png", programmeID: "JmpRsRGr8" )
s3 = Show.create( title: "Bob's Bunkers", series: 2, description: "Bob finds himself stuck in yet another bunker", image: "bob-eating-beans.png", programmeID: "BnkrsRH4rd" )

u1 = User.create( name: "Stevey-Bob", age: 32, sex: "M" )
u2 = User.create( name: "Bobby-Jo", age: 18, sex: "M" )
u3 = User.create( name: "Sandra-D", age: 22, sex: "F" )
u4 = User.create( name: "SamCam", age: 45, sex: "F" )

f1 = Favourite.create( user_id: u1.id, show_id: s1.id, rating: 10 )
f2 = Favourite.create( user_id: u1.id, show_id: s2.id, rating: 8 )
f3 = Favourite.create( user_id: u2.id, show_id: s3.id, rating: 9 )
f4 = Favourite.create( user_id: u3.id, show_id: s3.id, rating: 9 )
f5 = Favourite.create( user_id: u3.id, show_id: s2.id, rating: 4 )
f6 = Favourite.create( user_id: u4.id, show_id: s1.id, rating: 9 )
f7 = Favourite.create( user_id: u4.id, show_id: s2.id, rating: 10 )
f7 = Favourite.create( user_id: u4.id, show_id: s3.id, rating: 10 )
