FactoryGirl.define do
  factory :user do
    email     { Faker::Internet.email }
    password  { Faker::Internet.password }
    trait :with_movies do
      movies { build_list :movie, 3 }
    end
  end
end