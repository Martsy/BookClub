class Review < ApplicationRecord
  belongs_to :user
  belongs_to :book

   validates_presence_of :user_id
   validates_presence_of :book_id
   validates_presence_of :text
   validates_presence_of :rating
   validates_presence_of :headline
end
