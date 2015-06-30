# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
	Photo.delete_all 
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	photos = Photo.create([
		{public:true, caption:"Best photo ever", url:"http://nedroid.com/imagesb/partycat01.gif"},
		{public:true, caption:"next best photo ever", url:"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS8PnNYbeb-unepQPlluVtmx3ciUeTO6WWVI-8jAyy1nQp9SCld9w"}
	])