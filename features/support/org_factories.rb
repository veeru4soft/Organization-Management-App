require 'factory_girl'

FactoryGirl.define do 
	factory :org , class: Organization do
		name "Org"
		phnum "25454554"
		city "Kakinada"
		state "AP"
		email "veerababu@gmail.com"
	  	website "www.veeru.com"
	end
end

FactoryGirl.define do
	factory :group, class: Group do
		name 'Grp1'
		organization_id '1'
	end
end

FactoryGirl.define do
	factory :user, class: Person do
		firstname 'veerababu'
		lastname 'e'
		phnum '25689898'
		email 'veeru@gmail.com'
		dbo '21-04-1988'
		place 'Kakinada'
		propic '/assets/images/button-go.png'
		group_id '1'
	end
end

FactoryGirl.define do
	factory :skill, class: Skill do
		allskills '[ruby,rails,cucumber]'
		person_id ''
		group_id '1'
	end
end

