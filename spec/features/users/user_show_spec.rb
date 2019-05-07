require 'rails_helper'

RSpec.describe 'When visiting an user show page' do

  before :each do
    create_list(:review, 4, user: create(:user))
    @user = User.first
    visit user_path(@user.id)
  end

  it "should have user name" do
    within "#user-show" do
    expect(page).to have_content @user.name
    expect(find("img")[:src]).to eq(@user.photo)
    end
  end 

  it "should show book info" do
    @user.reviews.each do |review|
      within "#review-#{review.id}" do
        expect(page).to have_content review.book.title
        expect(page).to have_content("#{'⭐' * review.book.average_rating.to_i}")
        expect(find("img")[:src]).to eq(review.book.book_cover)

        expect(page).to have_content review.headline
        expect(page).to have_content review.text
        expect(page).to have_content("Rating: #{review.rating}")
        expect(page).to have_content review.created_at.strftime("%B %d, %Y")
      end
    end
  end
end

