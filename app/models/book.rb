class Book < ApplicationRecord
  validates_presence_of  :title, :pages, :year_published, :book_cover 
end