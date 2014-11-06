Given /^at Index Page$/ do
	visit root_path
end

When /^I click on Skills Menu$/ do
	within('#skillcreate') do
		click_link 'createskill'
	end
end

Then /^I can see Menu List$/ do
	page.should have_content('Create Skills For Group')
end

When /^I click on Create Skills for Group$/ do
	within('#newgrpskill') do
		click_link 'skillgrpnew'
	end
end

Then /^I should see Group Skills form with two fields if you want more fields$/ do
	page.should have_content('Group Id:')
end

Then /^you should click on Add Skills button$/ do
	click_button 'Add New Skill'
end

When /^I fill all the fields and click on Save Button$/ do
	select 'org:1 grp:1 G1', :from => 'grpsel'
	fill_in 'sk1', with: 'Ruby'
	fill_in 'sk2', with: 'Rails'
	#fill_in 'sk3', with: 'Cucumber'
	click_button 'Save'
end

Then /^Skills created under one Group$/ do
	a = Skill.first.inspect
	if !a
		puts "An error occured while storing data into database"
	else
		puts "Success fully inserted"
	end
end
