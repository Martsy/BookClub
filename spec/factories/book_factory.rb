FactoryBot.define do
  factory :book do
    sequence :title { |n| "Title-#{n}" }
    pages {rand(1..9999)}
    year_published {rand(0..2019)}
    sequence :book_cover { |n| "https://www.images.com/image-#{n}.png" }
  end
end
