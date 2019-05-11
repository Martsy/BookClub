# coding: utf-8
require 'rails_helper'

RSpec.describe "when visiting a book index page" do

  before :each do
    @book_1 = create(:book, pages: 200)
    @book_2 = create(:book, pages: 100)
    @book_3 = create(:book, pages: 400)

    @author_1 = create(:author)
    @author_2 = create(:author)
    @author_3 = create(:author)

    @user_1 = create(:user)
    @user_2 = create(:user)
    @user_3 = create(:user)

    @book_1.authors << @author_1
    @book_1.authors << @author_2

    @book_2.authors << @author_1

    @book_1.reviews.create(user: @user_1, text: "Very good book", rating: 8)
    @book_1.reviews.create(user: @user_2, text: "What did I just read", rating: 4)
    @book_1.reviews.create(user: @user_3, text: "Meh book", rating: 6)

    @book_2.reviews.create(user: @user_2, text: "mehhh", rating: 7)

    visit books_path
  end


  it "should show book  info" do
    Book.all.each do |book|
      within "#book-#{book.id}" do
        expect(page).to have_content(book.title)
        expect(page).to have_content("#{"⭐" * book.average_rating.to_i}")
        expect(page).to have_content("#{book.number_of_reviews}")

        book.get_authors.each do |author|
          expect(page).to have_content("#{author.name}")
        end if book.get_authors

        expect(page).to have_content("pages: #{book.pages}")
        expect(page).to have_content("published: #{book.year_published}")
        expect(find("img")[:src]).to eq(book.book_cover)
      end
    end
  end

  it "should return Anonymous if book has no author" do
    expect(page).to have_content("Anonymous")
  end

  it "should display default text if book has no reviews" do
    within "#book-#{@book_3.id}" do
      expect(page).to_not have_content("⭐" )
      expect(page).to have_content("0 user reviews")
    end
  end

  it "should be able to sort books by rating" do
    expect(page).to have_link("rating-ascending")

    click_link("rating-ascending")
    expect("book-high-rated-#{@book_1.id}").to appear_before("book-#{@book_2.id}")

    expect(page).to have_link("rating-descending")
    click_link("rating-descending")

    expect("book-high-rated-#{@book_2.id}").to appear_before("book-#{@book_1.id}")
  end

  it "should be able to sort books by reviews" do
    expect(page).to have_link("reviews-ascending")
    click_link("reviews-ascending")
    expect("book-#{@book_2.id}").to appear_before("book-#{@book_1.id}")

    expect(page).to have_link("reviews-descending")
    click_link("reviews-descending")
    expect("book-#{@book_1.id}").to appear_before("book-#{@book_2.id}")
  end

  it "should be able to sort books by pages" do
    expect(page).to have_link("pages-ascending")
    click_link("pages-ascending")
    expect("book-#{@book_2.id}").to appear_before("book-#{@book_1.id}")

    expect(page).to have_link("pages-ascending")
    click_link("pages-descending")
    expect("book-#{@book_1.id}").to appear_before("book-#{@book_2.id}")
  end

  it "should display the three highest rated books, title and avg rating" do
      expect("book-high-rated-#{@book_2.id}").to appear_before("book-high-rated-#{@book_1.id}")
      expect("book-high-rated-#{@book_1.id}").to appear_before("book-high-rated-#{@book_3.id}")
  end

  it "should display the three worst rated books, title and avg rating" do
      expect("book-low-rated-#{@book_1.id}").to appear_before("book-low-rated-#{@book_2.id}")
      expect("book-low-rated-#{@book_2.id}").to appear_before("book-low-rated-#{@book_3.id}")
  end

  it "should display users written most reviews and a count of reviews" do
    expect("user-stat-#{@user_2.id}").to appear_before("user-stat-#{@user_1.id}")
  end

end
