require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    first_name 'ryan'
    last_name 'torrance'
    password 'password'
    password_confirmation 'password'
  end
end
