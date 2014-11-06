Given /^Navigation to the Home Page$/ do
	visit root_path
end

When /^I click on Skills Menu Nav$/ do
	within('#skillcreate') do
		click_link 'createskill'
	end
end

When /^I click on View Group Skills By Id sub Menu$/ do
	within('#groupskillsview') do
		click_link 'groupskillsdisplay'
	end
end

Then /^I should see a select box with some values$/ do
	page.should have_content('Choose Group:')
end

When /^I choose Group Id and click on the Search$/ do
	select 'org: 1 grp: 1 G1', :from => 'grpsel'
	click_button 'Search'
end

Then /^I can view all the skills of a Group$/ do |table|
	page.should have_selector 'h1', text:'Listing Group Skills'
	table.hashes.each do |columns|
		columns.keys.each do |k|
			within('table') do
				page.should have_content(columns[k])
			end
		end
	end
end
