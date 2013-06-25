FactoryGirl.define do
	factory :project do
		name "Example project" 
	end
	factory :ticket do
		title "Example ticket"
		description "An example ticket, nothing more"
	end
	factory :user do
		sequence(:email) { |n| "user#{n}@ticketee.com" }
		password "password"
		password_confirmation "password"
	end
end