# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.create(name: 'Michael  Fitzgerald')
Book.create(title: 'Learnining Ruby: The Language That Powers Rails', pages: 275, year_published: 2007, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51Q2kqM7zUL._SX387_BO1,204,203,200_.jpg')
Book.create(title: 'Ruby Pocket Reference', pages: 224, year_published: 2015, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51FlRmxu-4L._SX300_BO1,204,203,200_.jpg')

Author.create(name: 'David A. Black')
Book.create(title: 'The Well-Grounded Rubyist', pages: 584, year_published: 2019, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/41812LkarcL._SX397_BO1,204,203,200_.jpg')

Author.create(name: 'Russ Olsen')
Book.create(title: 'Eloquent Ruby', pages: 448, year_published: 2011, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/414gR4dCXiL._SX387_BO1,204,203,200_.jpg')
Book.create(title: "Design Patterns In Ruby", pages: 384, year_published: 2007, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51kExzC-67L._SX377_BO1,204,203,200_.jpg')

Author.create(name: 'Sandy Metz')
Book.create(title: 'Practical Object-Oriented Design in Ruby', pages: 288, year_published: 2018, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/519GE1GKPML._SX379_BO1,204,203,200_.jpg')

Author.create(name: 'Jay Fields')
Book.create(title: 'Refactoring', pages: 480, year_published: 2009, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51ZguvU8wLL._SX380_BO1,204,203,200_.jpg')

Author.create(name: 'Obie Fernandez')
Book.create(title: 'The Rails 5 Way', pages: 1088, year_published: 2017, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51K8QKlrljL._SX380_BO1,204,203,200_.jpg')

Author.create(name: 'Sam Ruby')
Book.create(title: 'Agile Web Development with Rails 5.1', pages: 496, year_published: 2017, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51DyiYr4-lL._SX415_BO1,204,203,200_.jpg')

Author.create(name: 'Hal Fulton')
Book.create(title: 'The Ruby Way', pages: 998, year_published: 2015, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/417D%2Bybj3GL._SX379_BO1,204,203,200_.jpg')

Author.create(name: 'David Flanagan')
Book.create(title: 'The Ruby Programming Language: Everything You Need to Know', pages: 448, year_published: 2008, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/41qOQp9RoZL._SX379_BO1,204,203,200_.jpg')

Author.create(name: 'Lucas Carlson')
Book.create(title: 'Ruby Cookbook', pages: 992, year_published: 2015, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/518P0qmeXpL._SX379_BO1,204,203,200_.jpg')

Author.create(name: 'Ray Yao')
Book.create(title: 'RUBY: In 8 Hours', pages: 204, year_published: 2018, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/41t-EUQ5mZL.jpg')
