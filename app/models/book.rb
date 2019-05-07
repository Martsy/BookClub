class Book < ApplicationRecord
  validates_presence_of  :title, :author, :pages, :year_published, :book_cover 
end