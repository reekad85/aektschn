FactoryGirl.define do
	sequence(:email) { |n| "user_#{n}@example.com" }
  	
  	factory :user do

  		email 
    	password "1234567890"
    	first_name "Gaga"
    	last_name "Example"
    	admin false
  	end

  	factory :admin, class: User do
  		email 
  		password "qwertyuiop"
  		first_name "Admin"
  		last_name "User"
  		admin true
	end
end