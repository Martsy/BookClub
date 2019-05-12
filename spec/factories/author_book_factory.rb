FactoryBot.define do
  factory :author_book do
    author
    book

    trait :same_author do
      author {Author.first || create(:author)}
    end

  end
end
