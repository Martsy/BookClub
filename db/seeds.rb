# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a = Author.create(name: 'Michael  Fitzgerald')
book1 = Book.create(title: 'Learning Ruby: The Language That Powers Rails', pages: 275, year_published: 2007, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51Q2kqM7zUL._SX387_BO1,204,203,200_.jpg')
book2 = Book.create(title: 'Ruby Pocket Reference', pages: 224, year_published: 2015, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51FlRmxu-4L._SX300_BO1,204,203,200_.jpg')
a.books << book1
a.books << book2

b = Author.create(name: 'David A. Black')
bb = Author.create(name: 'Joseph Leo')

book3 = Book.create(title: 'The Well-Grounded Rubyist', pages: 584, year_published: 2019, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/41812LkarcL._SX397_BO1,204,203,200_.jpg')
b.books << book3
bb.books << book3

c = Author.create(name: 'Russ Olsen')
c.books << Book.create(title: 'Eloquent Ruby', pages: 448, year_published: 2011, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/414gR4dCXiL._SX387_BO1,204,203,200_.jpg')
c.books << Book.create(title: "Design Patterns In Ruby", pages: 384, year_published: 2007, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51kExzC-67L._SX377_BO1,204,203,200_.jpg')

d = Author.create(name: 'Sandy Metz')
d.books << Book.create(title: 'Practical Object-Oriented Design in Ruby', pages: 288, year_published: 2018, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/519GE1GKPML._SX379_BO1,204,203,200_.jpg')

e = Author.create(name: 'Jay Fields')
e.books << Book.create(title: 'Refactoring', pages: 480, year_published: 2009, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51ZguvU8wLL._SX380_BO1,204,203,200_.jpg')

f = Author.create(name: 'Obie Fernandez')
f.books << Book.create(title: 'The Rails 5 Way', pages: 1088, year_published: 2017, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51K8QKlrljL._SX380_BO1,204,203,200_.jpg')

g = Author.create(name: 'Sam Ruby')
g.books << Book.create(title: 'Agile Web Development with Rails 5.1', pages: 496, year_published: 2017, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51DyiYr4-lL._SX415_BO1,204,203,200_.jpg')

h = Author.create(name: 'Hal Fulton')
h.books << Book.create(title: 'The Ruby Way', pages: 998, year_published: 2015, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/417D%2Bybj3GL._SX379_BO1,204,203,200_.jpg')

i = Author.create(name: 'David Flanagan')
i.books << Book.create(title: 'The Ruby Programming Language: Everything You Need to Know', pages: 448, year_published: 2008, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/41qOQp9RoZL._SX379_BO1,204,203,200_.jpg')

j = Author.create(name: 'Lucas Carlson')
j.books << Book.create(title: 'Ruby Cookbook', pages: 992, year_published: 2015, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/518P0qmeXpL._SX379_BO1,204,203,200_.jpg')

k = Author.create(name: 'Ray Yao')
k.books << Book.create(title: 'RUBY: In 8 Hours', pages: 204, year_published: 2018, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/41t-EUQ5mZL.jpg')

l = Author.create(name: 'John Elder' photo: 'https://images-na.ssl-images-amazon.com/images/I/51IJaUq78CL._US230_.jpg')
l.books << Book.create(title: 'Intro To Ruby Programming', pages: 166, year_published: 2016, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51K-WPsbYdL._SX404_BO1,204,203,200_.jpg')

m = Author.create(name: 'Daniel Kehoe' photo: 'https://avatars2.githubusercontent.com/u/950301?s=460&v=4'
m.books << Book.create(title: 'Learn Ruby on Rails 5', pages: 169, year_published: 2016, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51yimDYATbL.jpg')

n = Author.create(name: 'Daniel Kehoe' photo: 'https://avatars2.githubusercontent.com/u/950301?s=460&v=4'
n.books << Book.create(title: 'Learn Ruby on Rails 5', pages: 169, year_published: 2016, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51yimDYATbL.jpg')

o = Author.create(name: 'Daniel Kehoe' photo: 'https://avatars2.githubusercontent.com/u/950301?s=460&v=4'
o.books << Book.create(title: 'Learn Ruby on Rails 5', pages: 169, year_published: 2016, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51yimDYATbL.jpg')




amy    = User.create(name: 'Amy', photo: 'https://d682ma8ami8n4.cloudfront.net/images/staff/holt.jpg' )
amy.reviews.create(book:book1, headline: "Buy this Book Now", text:"A valuable resource for any new developers library", rating: 10)
amy.reviews.create(book:book2, headline: "Literally, the best book I have read in muh life", text:"Good book", rating: 8)
amy.reviews.create(book:book3, headline: "A 5 Year Old Know More", text:"Don't even waste your time on this one", rating: 2)
amy.reviews.create(book:book6, headline: "Zzzzzzzzzzzz", text:"Great book if you suffer from insomnia", rating: 3)

brian  = User.create(name: 'Brian', photo: 'https://d682ma8ami8n4.cloudfront.net/images/staff/zanti.jpg')
brian.reviews.create(book:Book.third,headline: "Totally Awful",text:"Good book if your bored out of your mind", rating: 2)
brian.reviews.create(book:book2, headline: "Fantastic!!!", text:"A great read!", rating: 10)
brian.reviews.create(book:book6, headline: "Literally, the worst book I have read in muh life", text:"Terrible book", rating: 1)
brian.reviews.create(book:book8, headline: "Author should have been an actor", text: "The author has no idea what he is talking about", rating: 2)
brian.reviews.create(book:book10, headline: "Eye Opener", text: "This book will change the way you program", rating: 9)

meg    = User.create(name: 'Meg', photo: 'https://d682ma8ami8n4.cloudfront.net/images/staff/stang.jpg')
meg.reviews.create(book:Book.book11,headline: "Not a Good Book",text:"Good book", rating: 2)
meg.reviews.create(book:Book.book12,headline: "Snooooooze",text:"My dog wrote a better book on programming.", rating: 2)
meg.reviews.create(book:Book.book2,headline: "Compelling",text:"I could not put this book down", rating: 9)
meg.reviews.create(book:Book.book2,headline: "A book for the Next Generation",text:"A must read for any new programmer", rating: 7)
meg.reviews.create(book:Book.book2,headline: "Waste of time",text:"You can skip this one.", rating: 2)

sal    = User.create(name: 'Sal' photo: 'https://d682ma8ami8n4.cloudfront.net/images/staff/espinosa.jpg')
sal.reviews.create(book:Book.first, headline: "Teachers Favorite",text:"I read the entire book in one sitting", rating: 8)
sal.reviews.create(book:Book.last, headline: "Fantastic Read", text:"Very Interiguing", rating: 9)
sal.reviews.create(book:Book.first, headline: "Interesting",text:"Show me more", rating: 5)
sal.reviews.create(book:Book.last, headline: "Interiguing", text:"Hmmmm...intersting", rating: 9)
sal.reviews.create(book:Book.last, headline: "On the Fence", text:"I'm left curious", rating: 6)
mike   = User.create(name: 'Mike' photo: 'https://d682ma8ami8n4.cloudfront.net/images/staff/dao.jpg')
megan  = User.create(name: 'Megan' photo: 'https://d682ma8ami8n4.cloudfront.net/images/staff/mcmahon.jpg')
jeff   = User.create(name: 'Jeff' photo: 'https://d682ma8ami8n4.cloudfront.net/images/staff/casimir.jpg')
ramiro = User.create(name: 'Ramiro', photo: 'https://d682ma8ami8n4.cloudfront.net/images/staff/vaca.jpg')
