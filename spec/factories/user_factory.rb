FactoryBot.define do
  factory :user do
    sequence :name { |n| "User-#{n}"}
    review 
  end
end
