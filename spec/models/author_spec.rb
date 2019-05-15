require 'rails_helper'

describe Author do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_length_of :name }
    it { should validate_uniqueness_of :name }
  end

  describe 'relationships' do
    it { should have_many(:books).through(:author_books) }
  end
end
