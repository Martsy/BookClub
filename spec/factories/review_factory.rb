FactoryBot.define do
  factory :review do
    sequence(:text) { |n| "#{n}" }
    sequence(:rating) { |n| "⭐ #{limit(5)}" }
    user
    book
  end
end