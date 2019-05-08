require "rails_helper"

describe "When a user visit / they should see a welcome page" do

  it "should show the home screen" do
    visit '/'

    expect(page).to have_link "books"
  end
end
