require 'rails_helper'

RSpec.describe AuthorBook do
  #Not sure if validations are necessary
  describe "validations" do
    it { should validate_presence_of :author }
    it { should validate_presence_of :book }
  end

  describe "relationships" do
    it { should belong_to :author }
    it { should belong_to :book }
  end

end
