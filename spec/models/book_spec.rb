require 'rails_helper'

describe Book do
  describe "validations" do
    it { should validate_presence_of :title }
    # it { should validate_presence_of :author }
    it { should validate_presence_of :pages }
    it { should validate_presence_of :year_published }
    it { should validate_presence_of :book_cover }
  end

  describe "relationships" do 
    it {should belong_to :author}
  end

end