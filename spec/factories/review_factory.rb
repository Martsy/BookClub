FactoryBot.define do
  factory :review do
    sequence(:text) { |n| "Text-#{n}" }
    rating {rand(1..10)}
    user
    book
  end
end