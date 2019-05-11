FactoryBot.define do
  factory :user do
    sequence :name { |n| "User-#{n}"}
    photo { "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"}
  end
end
