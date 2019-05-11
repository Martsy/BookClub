class User < ApplicationRecord
  has_many :reviews
  has_many :books, through: :reviews

  validates_presence_of :name
  
  def self.most_reviews
    User.left_joins(:reviews).group("users.id").order("COUNT(reviews) DESC ")
  end
end
