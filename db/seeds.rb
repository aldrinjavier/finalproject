# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Genre.create(genre: 'Alternative rock')
Genre.create(genre: 'Pop')
Genre.create(genre: 'R n b')

Album.create(title: '+ album',
cover: 'ed.jpg',
price: '10',
date_released: '2011-08-01',
duration: '59:60',
artist_id: '5',
genre_id: '1',
label_id: '3')

Album.create(title: 'AM',
cover: 'am.jpg',
price: '18',
date_released: '2013-08-01',
duration: '68:60',
artist_id: '6',
genre_id: '2',
label_id: '2')

Album.create(title: 'Im with you',
cover: 'im.jpg',
price: '20',
date_released: '2012-08-01',
duration: '70:60',
artist_id: '3',
genre_id: '7',
label_id: '3')
