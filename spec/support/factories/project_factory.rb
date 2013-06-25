FactoryGirl.define do
	factory :project do
		name "Example project" 
	end
	factory :ticket do
		title "Example ticket"
		description "An example ticket, nothing more"
	end
	factory :user do
		email "ticketee@email.com"
		password "password"
		password_confirmation "password"
		factory :confirmed_user do
			after_create do |user|
				user.confirm!
			end
		end
	end
end