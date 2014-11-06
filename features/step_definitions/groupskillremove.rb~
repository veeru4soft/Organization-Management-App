Given /^Navigation Views Page$/ do
	visit root_path
end

When /^I click on Skils Menu Navigation Bar$/ do
	within('#skillcreate') do
		click_link 'createskill'
	end
end

When /^I click on View Group Skils sub Menu item$/ do
	within('#groupskillsview') do
		click_link 'groupskillsdisplay'
	end
end

Then /^I can see a select box with values$/ do
	page.should have_content('Choose Group:')
end

When /^I choose Group Id and click to Search $/ do
	select 'org: 1 grp: 1 PhP', :from => 'grpsel'
	click_button 'Search'
end

Then /^I can view all the skils of a Particular Group$/ do 
	page.should have_selector 'h1', text:'Listing Group Skills'
end

When /^I click on the remove option$/ do
	within('#optd') do
		click_link 'Click to Delete the Skills'
	end
end

Then /^skills are deleted$/ do
	page.should have_content('Skill Name')
end
