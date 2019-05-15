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
c.books << Book.create(title: 'Design Patterns In Ruby', pages: 384, year_published: 2007, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51kExzC-67L._SX377_BO1,204,203,200_.jpg')

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

l = Author.create(name: 'John Elder', photo: 'https://images-na.ssl-images-amazon.com/images/I/51IJaUq78CL._US230_.jpg')
l.books << Book.create(title: 'Intro To Ruby Programming', pages: 166, year_published: 2016, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51K-WPsbYdL._SX404_BO1,204,203,200_.jpg')

m = Author.create(name: 'Daniel Kehoe', photo: 'https://avatars2.githubusercontent.com/u/950301?s=460&v=4')
m.books << Book.create(title: 'Learn Ruby on Rails 5', pages: 169, year_published: 2016, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51yimDYATbL.jpg')

n = Author.create(name: 'Jordan Hudgens', photo: 'https://www.filepicker.io/api/file/A47WsVOMROy04hs0hSxc')
n.books << Book.create(title: 'Comprehensive Ruby Programming', pages: 330, year_published: 2017, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/41VObL3paoL._SX404_BO1,204,203,200_.jpg')

o = Author.create(name: 'Zed A Shaw', photo: 'https://pluralsight.imgix.net/author/lg/zed-shaw-v1.jpg?w=200')
o.books << Book.create(title: 'Learn Ruby the Hard Way', pages: 336, year_published: 2014, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51yExMureIL._SX373_BO1,204,203,200_.jpg')

p = Author.create(name: 'Ophir Frieder', photo: 'http://people.cs.georgetown.edu/~ophir/images/frieder-2016.jpg')
p.books << Book.create(title: 'Computer Science Programming Basics in Ruby', pages: 188, year_published: 2013, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51ze-JM%2BrmL._SX379_BO1,204,203,200_.jpg')

q = Author.create(name: 'Jake Day Williams', photo: 'https://images-na.ssl-images-amazon.com/images/I/61fOhcqoUwL._US230_.jpg')
q.books << Book.create(title: 'Learn Ruby', pages: 90, year_published: 2014, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51ze-JM%2BrmL._SX379_BO1,204,203,200_.jpg')

r = Author.create(name: 'Paola Perrotta', photo: 'https://images-na.ssl-images-amazon.com/images/I/51hpDePj9jL._US230_.jpg')
r.books << Book.create(title: 'Metaprogramming Ruby', pages: 296, year_published: 2010, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51%2BAQmteXaL._SX415_BO1,204,203,200_.jpg')

s = Author.create(name: 'Karthikeyan A K', photo: 'https://images-na.ssl-images-amazon.com/images/I/41akSbL3R3L._SX352_BO1,204,203,200_.jpg')
s.books << Book.create(title: 'I Love Ruby', pages: 307, year_published: 2019, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/41akSbL3R3L._SX352_BO1,204,203,200_.jpg')

t = Author.create(name: 'Eric Weinstein', photo: 'https://images-na.ssl-images-amazon.com/images/I/61g0t59Fd1L._US230_.jpg')
t.books << Book.create(title: 'Ruby Wizardry', pages: 352, year_published: 2019, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/51XbfMJIoML._SX376_BO1,204,203,200_.jpg')

u = Author.create(name: 'Mark Sobkowicz', photo: 'https://images-na.ssl-images-amazon.com/images/I/716YYir2tbL._US230_.jpg')
u.books << Book.create(title: 'Learn Game Programming with Ruby', pages: 208, year_published: 2015, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/41hkEJpZRIL._SX415_BO1,204,203,200_.jpg')

v = Author.create(name: 'Rob Isenberg', photo: 'https://images-na.ssl-images-amazon.com/images/I/716YYir2tbL._US230_.jpg')
v.books << Book.create(title: 'Docker for Rails Developers', pages: 240, year_published: 2019, book_cover: 'https://images-na.ssl-images-amazon.com/images/I/41s4oEcpiyL._SX415_BO1,204,203,200_.jpg')

amy = User.create(name: 'Amy', photo: 'https://d682ma8ami8n4.cloudfront.net/images/staff/holt.jpg')
amy.reviews.create(book: Book.all[6], headline: 'Buy this Book Now', text: 'A valuable resource for any new developers library.', rating: 10)
amy.reviews.create(book: Book.all[8], headline: 'Literally, the best book I have read in muh life', text: 'Good book.', rating: 8)
amy.reviews.create(book: Book.third, headline: 'A 5 Year Old Knows More', text: "Don't even waste your time on this one.", rating: 2)
amy.reviews.create(book: Book.last, headline: 'Zzzzzzzzzzzz', text: 'Great book if you suffer from insomnia.', rating: 3)
amy.reviews.create(book: Book.all[16], headline: 'Informative', text: 'Nice resource for your personal library.', rating: 8)
amy.reviews.create(book: Book.all[17], headline: 'Boring', text: 'Barely made it to the end.', rating: 3)

brian = User.create(name: 'Brian', photo: 'https://d682ma8ami8n4.cloudfront.net/images/staff/zanti.jpg')
brian.reviews.create(book: Book.second, headline: 'Fantastic!!!', text: 'A great read!', rating: 10)
brian.reviews.create(book: Book.last, headline: 'Literally, the worst book I have read in muh life', text: 'Terrible book', rating: 1)
brian.reviews.create(book: Book.third, headline: 'Author should have been an actor', text: 'The author has no idea what he is talking about', rating: 2)
brian.reviews.create(book: Book.first, headline: 'Eye Opener', text: 'This book will change the way you program', rating: 9)

meg = User.create(name: 'Meg', photo: 'https://d682ma8ami8n4.cloudfront.net/images/staff/stang.jpg')
meg.reviews.create(book: Book.first, headline: 'Not a Good Book', text: 'Good book', rating: 2)
meg.reviews.create(book: Book.second, headline: 'Snooooooze', text: 'My dog wrote a better book on programming.', rating: 2)
meg.reviews.create(book: Book.third, headline: 'Compelling', text: 'I could not put this book down', rating: 9)
meg.reviews.create(book: Book.all[9], headline: 'A Book for the Next Generation', text: 'A must read for any new programmer', rating: 7)
meg.reviews.create(book: Book.all[6], headline: 'Waste of time', text: 'You can skip this one.', rating: 2)

sal = User.create(name: 'Sal', photo: 'https://d682ma8ami8n4.cloudfront.net/images/staff/espinosa.jpg')
sal.reviews.create(book: Book.first, headline: 'Teachers Favorite', text: 'I read the entire book in one sitting', rating: 8)
sal.reviews.create(book: Book.last, headline: 'Awesome Read', text: 'Very Intriguing', rating: 9)
sal.reviews.create(book: Book.all[3], headline: 'Interesting', text: 'Show me more', rating: 5)
sal.reviews.create(book: Book.all[4], headline: 'Intriguing', text: 'Hmmmm...interesting', rating: 6)
sal.reviews.create(book: Book.all[5], headline: 'On the Fence', text: "I'm left curious", rating: 6)

mike = User.create(name: 'Mike', photo: 'https://d682ma8ami8n4.cloudfront.net/images/staff/dao.jpg')
mike.reviews.create(book: Book.all[15], headline: 'What?!??', text: 'I wish I could get back the hours I spent reading this nonsense.', rating: 1)
mike.reviews.create(book: Book.all[13], headline: 'Valuable Resource', text: 'I could not have written a better book myself.', rating: 10)
mike.reviews.create(book: Book.all[19], headline: 'Unforgettable', text: 'I can not wait for the next edition.', rating: 9)
mike.reviews.create(book: Book.all[18], headline: 'Nothing New', text: 'Matrial can be a little dry.', rating: 7)

megan = User.create(name: 'Megan', photo: 'https://d682ma8ami8n4.cloudfront.net/images/staff/mcmahon.jpg')
megan.reviews.create(book: Book.all[7], headline: 'For the New Developer', text: 'Basic knowledge for a beginning developer.', rating: 7)
megan.reviews.create(book: Book.all[10], headline: 'Not.Good.', text: 'The best part of this book was the cover.', rating: 2)
megan.reviews.create(book: Book.all[12], headline: 'Very forgetable', text: 'Content is outdated', rating: 3)
megan.reviews.create(book: Book.all[17], headline: 'The Best', text: 'Easy to follow and read.', rating: 9)

jeff = User.create(name: 'Jeff', photo: 'https://d682ma8ami8n4.cloudfront.net/images/staff/casimir.jpg')
jeff.reviews.create(book: Book.first, headline: 'Mildly Entertaining', text: 'If you want a quick refresher check this one out.', rating: 6)
jeff.reviews.create(book: Book.all[9], headline: 'Totally Awful', text: 'Good book if your bored out of your mind', rating: 2)
jeff.reviews.create(book: Book.all[14], headline: 'Captivating', text: 'I wish this book never ended.', rating: 9)
jeff.reviews.create(book: Book.all[16], headline: 'Needs Work', text: 'Did not cover the basics', rating: 3)
jeff.reviews.create(book: Book.all[19], headline: 'Okay...', text: 'Not much to review, I would find another resource.', rating: 3)

ramiro = User.create(name: 'Ramiro', photo: 'https://d682ma8ami8n4.cloudfront.net/images/staff/vaca.jpg')
ramiro.reviews.create(book: Book.first, headline: '3.3', text: 'The author should have an editor clean up the terrible grammar!', rating: 5)
ramiro.reviews.create(book: Book.all[4], headline: '2.2', text: 'Too much clutter and useless information', rating: 3)
ramiro.reviews.create(book: Book.all[15], headline: '3.9', text: 'Winner. Book of the week.', rating: 9)
