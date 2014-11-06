Given /^Navigation View Page$/ do
	visit root_path
end

When /^I click on Skils Menu Bar$/ do
	within('#skillcreate') do
		click_link 'createskill'
	end
end

When /^I click on View Group Skills sub Menu of Skills$/ do
	within('#groupskillsview') do
		click_link 'groupskillsdisplay'
	end
end

Then /^I can view a select box with some values$/ do
	page.should have_content('Choose Group:')
end

When /^I choose Group Id and click on Search Button$/ do
	select 'org: 1 grp: 1 PhP', :from => 'grpsel'
	click_button 'Search'
end

Then /^I can view all the skills of a Group$/ do 
	page.should have_selector 'h1', text:'Listing Group Skills'
end

When /^I click on the edit option$/ do
	within('#optd') do
		click_link 'Click to Edit the Skills'
	end
end

Then /^I can view skills with a form$/ do
	page.should have_content('Skill Name')
end

When /^I change some of the values and click on Update$/ do
	select 'org:1 grp:1 PhP', :from => 'grpsel'
	fill_in 'sk1', with: 'CorePhP'
	fill_in 'sk2', with: 'Drupal'
	click_button 'Update'
end

Then /^skills are updated$/ do
	page.should have_content('Success')
end


