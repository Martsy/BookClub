FactoryBot.define do
  factory :book do
    sequence :title { |n| "Title-#{n}" }
    pages {rand(1..9999)}
    year_published {rand(1500..2019)}
    sequence :book_cover { |n| "https://i.ebayimg.com/images/g/1vcAAOSwXuda~NiV/s-l300.jpg" }
  end

end
