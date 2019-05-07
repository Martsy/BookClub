require 'rails_helper'

describe AuthorBook do
  describe "validations" do
    it { should validate_presence_of :book }
    it { should validate_presence_of :author }
  end
end