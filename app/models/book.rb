class Book < ApplicationRecord
  has_many :author_books
  has_many :authors, through: :author_books

  has_many :reviews
  has_many :users, through: :reviews

  validates_presence_of  :title, :pages, :year_published, :book_cover

  def get_authors
    authors.pluck :name
  end
end
