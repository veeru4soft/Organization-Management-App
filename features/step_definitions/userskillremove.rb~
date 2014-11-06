Given /^Navigation to View Page of Application$/ do
	visit root_path
end

When /^I click on Skil Menu NavBar$/ do
	within('#skillcreate') do
		click_link 'createskill'
	end
end

When /^I click on View Persons Skillls sub Menu$/ do
	within('#groupskillsview') do
		click_link 'groupskillsdisplay'
	end
end

Then /^I can see a select box with different values$/ do
	page.should have_content('Choose Group:')
end

When /^I select Person Id,Group Id and click on the Search$/ do
	select 'org: 1 grp: 1 PhP', :from => 'grpsel'
	click_button 'Search'
end

Then /^I can view all the skillls of a Person$/ do 
	page.should have_selector 'h1', text:'Listing Group Skills'
end

When /^I click on remove button option$/ do
	within('#optd') do
		click_link 'Click to Delete the Skills'
	end
end

Then /^person skills are removed$/ do
	page.should have_content('Skill Name')
end
