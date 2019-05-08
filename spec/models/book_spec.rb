require 'rails_helper'

describe Book do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :pages }
    it { should validate_presence_of :year_published }
    it { should validate_presence_of :book_cover }
  end

  describe "relationships" do 
    it {should have_many :author_books}
    it {should have_many(:authors).through(:author_books)}
    it { should have_many :reviews }
    it { should have_many(:users).through(:reviews)}
  end

end
