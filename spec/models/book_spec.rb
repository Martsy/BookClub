require 'rails_helper'

describe Book do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :pages }
    it { should validate_presence_of :year_published }
    it { should validate_presence_of :book_cover }
  end

  describe "relationships" do 
    it { should have_many :author_books}
    it { should have_many(:authors).through(:author_books)}
    it { should have_many :reviews }
    it { should have_many(:users).through(:reviews)}
  end

  describe "class methods" do
    attr_reader :book_1, :book_2

    before :each do
      @book_1 = create(:book, pages: 100)
      @book_2 = create(:book, pages: 200)
      create_list(:author_book,2, book: @book_2)
      user_1 = create(:user)
      user_2 = create(:user)

      book_1.reviews.create(user:user_1,headline:"summary",text:"lower rating", rating: 2)
      book_1.reviews.create(user:user_2,headline: "another summary", text:"high rating", rating: 8)

      book_2.reviews.create(user:user_1, headline: "yet another summary", text:"High rating", rating: 7)
    end

    it "should be able to sort by rating" do
      expect(Book.order_by("rating")).to eq([book_1, book_2])
      expect(Book.order_by("rating desc")).to eq([book_2, book_1])
    end

    it "should be able to sort by pages" do
      expect(Book.order_by("pages")).to eq([book_1, book_2])
      expect(Book.order_by("pages desc")).to eq([book_2, book_1])
    end

    it "should be able to sort by reviews" do
      expect(Book.order_by("reviews")).to eq([book_2, book_1])
      expect(Book.order_by("reviews desc")).to eq([book_1, book_2])
    end

    it "should return authors if it has authors" do
      expect(@book_1.get_authors).to eq(nil)
      expect(@book_2.get_authors).to eq([Author.first, Author.second])
    end
    it "should return authors other than the one given" do
      expect(@book_2.other_authors(Author.first.id)).to eq([Author.second])
    end
  end
end

