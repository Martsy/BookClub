require "rails_helper"

describe "When a user visit / they should see a welcome page" do

  it "should see two links on nav bar" do

    visit '/'

    click_link "home"
    expect(current_path).to eq "/"

    click_link "books"
    expect(current_path).to eq "/books"
  end

end
