require "rails_helper"

describe "When a user visit / they should see a welcome page" do

  it "should see two links on nav bar" do

    visit '/'
    within "nav" do
    expect(page).to have_link "home"
    expect(page).to have_link "books"
    end

    click_link "books"
    within "nav" do
      expect(page).to have_link "home"
      expect(page).to have_link "books"
    end

  end

end
