require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :pose do
    english_name "Downward Facing Dog"
    sanskrit_name "Adho Mukha Savasana"
    primary_photo "A photo string for now"
  end

end
