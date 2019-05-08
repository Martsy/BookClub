FactoryBot.define do
  factory :book do
    sequence :title { |n| "Title-#{n}" }
    pages {rand(100) + 900}
    year_published {rand(1000) + 2000}
    sequence :book_cover { |n| "https://www.images.com/image-#{n}.png" }
  end
end