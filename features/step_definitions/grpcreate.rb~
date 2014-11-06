Given /^Navigate Index Page$/ do
	visit root_path
end

When /^I click on Group Menu and click on Creata New Group sub Menu$/ do
	within("#group") do
		click_link 'grp'
	end
	within("#newgrp") do
		click_link 'grpnew'
	end
end

Then /^I should see New Group Form$/ do
	page.should have_content('Organization Id:')
end

When /^I Select Organization id and fill all the fields of the Form and click on Create Button$/ do
	select "1 Org1", :from => "orgsel"
	fill_in 'grpname', with: 'G2'
	click_button 'Save'
	page.should have_content('Success')
end

Then /^one Group is created under one Organization$/ do
	a = Group.first.inspect
	if !a
		puts "An error occured while storing data into database"
	else
		puts "Success fully inserted"
	end
end
