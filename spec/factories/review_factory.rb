FactoryBot.define do
  factory :review do

    sequence(:text) { |n| "Text-#{n}" }
    rating {rand(1..10)}
    book
    user

    trait :user do
      user {User.first or create(:user)}
    end
    trait :book do
      book {Book.first or create(:book)}
    end
  end
end