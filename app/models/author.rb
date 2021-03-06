class Author < ApplicationRecord
  has_many :author_books, dependent: :destroy
  has_many :books, through: :author_books

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: true }
  validates :name, length: { minimum: 2 }
end
