class AuthorBook < ApplicationRecord
  belongs_to :author
  belongs_to :book, dependent: :destroy

  validates :author, presence: true
  validates :book, presence: true
end
