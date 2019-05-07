require 'rails_helper'

RSpec.describe AuthorBook do
  # describe "validations" do
  #   it { should validate_presence_of :book }
  #   it { should validate_presence_of :author }
  # end

  describe "relationships" do
    it { should belong_to :author }
    it { should belong_to :book }
    
  end
end