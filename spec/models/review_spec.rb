require 'rails_helper'

RSpec.describe Review do

  describe "validations" do
    it { should validate_presence_of :user_id }
    it { should validate_presence_of :book_id }
    it { should validate_presence_of :text }
    it { should validate_presence_of :rating }
  end

  describe "relationships" do
    it {should belong_to :user }
    it {should belong_to :book}
  end
end
