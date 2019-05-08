FactoryBot.define do
  factory :artist do
    sequence :name { |n| "Author-#{n+1}"}
  end
end
