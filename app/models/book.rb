class Book < ApplicationRecord
  belongs_to :author
  has_many :author_books
  has_many :authors, through: :author_books 
  validates_presence_of  :title, :pages, :year_published, :book_cover, :author
end