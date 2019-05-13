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

      create(:review, user: user_1)

      expect(User.most_reviews).to eq([user_1, user_2])
    end
  end
end
