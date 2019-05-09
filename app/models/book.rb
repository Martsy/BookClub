class Book < ApplicationRecord
  has_many :author_books
  has_many :authors, through: :author_books

  has_many :reviews
  has_many :users, through: :reviews

  validates_presence_of  :title, :pages, :year_published, :book_cover

  def get_authors
    authors.pluck(:name).presence || ['Anonymous']
  end

  def average_rating
    reviews.average(:rating).presence || 0
  end

  def number_of_reviews
    reviews.count.presence || 0
  end

  def self.order_by(option)
    case option
    when "rating"
      Book.select("books.*, AVG(reviews.rating) as avg_rating")
        .group(:id).left_joins(:reviews).order("avg_rating")
    when "rating desc"
      Book.select("books.*, AVG(reviews.rating) as avg_rating")
        .group(:id).left_joins(:reviews).order("avg_rating DESC NULLS LAST")
    when "pages"
      Book.order('pages')
    when "pages desc"
      Book.order('pages DESC')
    when "reviews"
      Book.left_outer_joins(:reviews).group("books.id").order("COUNT(reviews) ")
    when "reviews desc"
      Book.left_outer_joins(:reviews).group("books.id").order("COUNT(reviews) desc")
    else
      Book.all
    end
  end
end
