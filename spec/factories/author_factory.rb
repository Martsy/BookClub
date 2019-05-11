FactoryBot.define do
  factory :author do
    sequence :name { |n| "Author-#{n}"}
    photo { "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"}
  end
end
