FactoryGirl.define do
  factory :movie do
    movie_title     { Faker::Name.name }
    description     { Faker::Lorem.paragraph }
    video_url       { 'https://www.youtube.com/watch?v=oAM6H2LqT6A' }
    user { FactoryGirl.create(:user)}
  end
end