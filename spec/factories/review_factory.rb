FactoryBot.define do
  factory :review do

    sequence(:text) { |n| "Text-#{n}" }    
    sequence(:headline) { |n| "Headline-#{n}" }
    rating {rand(1..10)}
    book
    user

    trait :same_user do
      user {User.first or create(:user)}
    end

    trait :same_book do
      book {Book.first or create(:book)}
    end

    trait :same_author do
      book {
        create(:author_book,:same_author)
        Book.last
      }
    end
  end
end
