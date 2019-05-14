# coding: utf-8
require 'rails_helper'
RSpec.describe 'When visiting an user show page' do

  before :each do
    create_list(:review, 40, user: create(:user))
    @user = User.first
    visit user_path(@user.id)
  end

  it "should have user info" do
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

  it "should be able to sort reviews by date" do
    expect(page).to have_link("sort ascending")
    expect(page).to have_link("sort descending")

    click_link("sort descending")
    expect("review-#{Review.last.id}").to appear_before("review-#{Review.first.id}")

    click_link("sort ascending")
    expect("review-#{Review.first.id}").to appear_before("review-#{Review.last.id}")
  end

  it "should be able to delete a review" do
    old_review = @user.reviews.first
    expect(page).to have_content(old_review.headline)
    within "#review-#{old_review.id}" do
      expect(page).to have_link("Delete Review")
      click_link 'Delete Review'
    end
    expect(current_path).to eq(user_path(@user))
    expect(page).to_not have_content(old_review.headline)
  end
end

