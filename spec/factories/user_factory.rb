FactoryGirl.define do
  factory :user do
  	sequence(:email) { |n| "user_#{n}@factory.com" }

  	email 
    password "1234567890"
    first_name "Peter"
    last_name "Example"
    admin false
  end
end