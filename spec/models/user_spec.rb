require 'rails_helper'

describe User do
  describe "validations" do
    it { should validate_presence_of :name}
  end

  describe "relationships" do
    it { should have_many(:books).through(:reviews)}
  end

  describe "class methods" do
    it "should return users ordered by review count" do
      user_1 = create(:user)
      user_2 = create(:user)

      book_1 = create(:book)
      book_2 = create(:book)

      user_1.reviews.create(book: book_1, text:"yes", rating:1000)

      expect(User.most_reviews).to eq([user_1, user_2])
    end
  end
end
