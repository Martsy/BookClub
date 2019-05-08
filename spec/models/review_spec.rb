require 'rails_helper'

RSpec.describe Review do
  #Not sure if validations are necessary
  describe "validations" do
    it { should validate_presence_of :user_id }
    it { should validate_presence_of :book_id }
    it { should validate_presence_of :text }        
    it { should validate_presence_of :rating }
  end

  desc
end