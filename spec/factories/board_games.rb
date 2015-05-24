FactoryGirl.define do
  factory :board_game do
    name Faker::Lorem.sentence
    description Faker::Lorem.paragraph
    average_rating 1.5
  end

end
