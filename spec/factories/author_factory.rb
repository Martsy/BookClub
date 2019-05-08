FactoryBot.define do
  factory :author do
    sequence :name { |n| "Author-#{n+1}"}
  end
end
