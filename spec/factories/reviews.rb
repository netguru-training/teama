FactoryGirl.define do
  factory :review do
    content Faker::Lorem.sentence
    rating 1.5
  end

end
