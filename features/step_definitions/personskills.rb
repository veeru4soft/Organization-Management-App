Given /^Navigation to Home Page$/ do
	visit root_path
end

When /^I click on Skill Menu Nav$/ do
	within('#skillcreate') do
		click_link 'createskill'
	end
end

When /^I click on View Persons Skills By Id sub Menu$/ do
	within('#personskillsview') do
		click_link 'personskillsdisplay'
	end
end

Then /^I can see a select box with some values$/ do
	page.should have_content('Choose Person:')
end

When /^I choose Person Id and click on the Search$/ do
	select 'grp: 1 person: 1 veeru', :from => 'prsnsel'
	click_button 'Search'
end

Then /^I can view all the skills of a Person$/ do |table|
	page.should have_selector 'h1', text:'Listing Person Skills'
	table.hashes.each do |columns|
		columns.keys.each do |k|
			within('table') do
				page.should have_content(columns[k])
			end
		end
	end
end
