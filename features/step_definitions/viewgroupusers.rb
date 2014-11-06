Given /^Opening Home Page$/ do
	visit root_path
end

When /^I click on Group Menu$/ do
	page.should have_selector 'h1', text: 'Organization Information System'
	within("#group") do
		click_link 'grp'
	end
end

When /^I click on View Users Under Group sub Menu$/ do
	within("#grpusers") do
		click_link 'usersgrp'
	end
end

Then /^I should see a select box$/ do
	page.should have_content('Choose Group:')
	
end

When /^I choose Group Id and click on Search Button$/ do
	select 'org: 1 grp: 1 G1', :from => 'grpsel'
	click_button 'Search'
end

Then /^I can view users under group$/ do |table|
	within('table') do
		page.should have_content('Group Id')
	end
	table.hashes.each do |columns|
		columns.keys.each do |k|
			within('table') do
				page.should have_content(columns[k])
			end
		end
	end
end
