FactoryGirl.define do
  factory :board_game do
    name Faker::Lorem.sentence
    description Faker::Lorem.paragraph
  end

end
