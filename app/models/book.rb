class Book < ApplicationRecord
  has_many :author_books, dependent: :destroy
  has_many :authors, through: :author_books

  has_many :reviews, dependent: :destroy
  has_many :users, through: :reviews

  before_save {self.title = title.titleize}

  validates_uniqueness_of :title
  

  validates_presence_of :title, :pages, :year_published, :book_cover
  validates :pages, inclusion: 1..10000
  validates :year_published, inclusion: 1456..2019

  def get_authors
    authors unless authors.empty?
  end

  def other_authors(id)
    authors.where("authors.id != #{id}").limit(2)
  end

  def average_rating
    reviews.average(:rating).presence || 0
  end

  def number_of_reviews
    reviews.count.presence || 0
  end

  def highest_review
    self.reviews.order(rating: :desc).first
  end

  def top_3_reviews
    reviews.order(rating: :desc).limit(3)
  end

  def bottom_3_reviews
    reviews.order(rating: :asc).limit(3)
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

  def self.highest_rated_books

    order_by("rating desc")
      end

  def self.lowest_rated_books

    order_by("rating")
  end

end
