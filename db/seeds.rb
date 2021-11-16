# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.create({
		book_id: 1,
		book_title: 'HTML & CSS: Design and Build Web Sites',
		author: ' Jon Duckett',
		publisher: 'Wiley',
		year: '2001'
       })

Book.create({
		book_id: 2,
		book_title: 'CSS in Depth',
		author: '  Keith Grant',
		publisher: 'Manning Publications',
		year: '2000'
       })

Book.create({
		book_id: 3,
		book_title: 'Cascading Style Sheets: The Definitive Guide',
		author: '  Eric A. Meyer',
		publisher: 'Reilly Media',
		year: '2000'
       })
