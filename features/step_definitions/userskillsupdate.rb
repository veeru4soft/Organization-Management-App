Given /^Navigation to View Page$/ do
	visit root_path
end

When /^I click on Skil Menu Bar$/ do
	within('#skillcreate') do
		click_link 'createskill'
	end
end

When /^I click on View Persons Skils By Id sub Menu$/ do
	within('#groupskillsview') do
		click_link 'groupskillsdisplay'
	end
end

Then /^I can see a select box with values$/ do
	page.should have_content('Choose Group:')
end

When /^I select Person and click on the Search$/ do
	select 'org: 1 grp: 1 PhP', :from => 'grpsel'
	click_button 'Search'
end

Then /^I can view all the skils of a Person$/ do 
	page.should have_selector 'h1', text:'Listing Group Skills'
end

When /^I click on edit option$/ do
	within('#optd') do
		click_link 'Click to Edit the Skills'
	end
end

Then /^I can view the skills edit page$/ do
	page.should have_content('Skill Name')
end

When /^I do any changes on the skills and click on Update button$/ do
	within('#check1') do
		page.should have_content('Rails')
		check ' Rails
'
	end
	click_button 'Update'
end

Then /^all modified skills are updated$/ do
	page.should have_content('Success')
end
