Given /^I am at Home Page$/ do
	visit root_path
end

When /^I move to Organization Menu$/ do
	page.should have_selector 'h1', text: 'Organization Information System'
	within("#org") do
		click_link 'orga'
	end
end

When /^click on View Users Under Organization sub Menu$/ do
	within("#viewuser") do
		click_link 'userview'
	end
end

When /^I choose Organization Id$/ do
	page.should have_content('Choose Organization :')
	select '1 Org1', :from => 'orgsel'
	click_button 'Show'
end

Then /^I should see <organization id> <organization name> <groupid> <groupname> <userid> <username>$/ do |table|
	within('table') do
		page.should have_content('Organization Id')
	end
	table.hashes.each do |columns|
		columns.keys.each do |k|
			within('table') do
				page.should have_content(columns[k])
			end
		end
	end
end
