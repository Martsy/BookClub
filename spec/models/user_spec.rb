require 'rails_helper'

describe User do
  describe "validations" do
    it { should validate_presence_of :name}
  end  
end