Given(/^I have App running with appium on Sauce$/) do
  
end

When(/^click \+ button using sauce driver$/) do
  sauce.find_element(:name, "Add").click
end

When(/^I enter text "(.*?)" and saved it on sauce$/) do |data|
sauce.find_element(:xpath, "//window[1]/scrollview[1]/textview[1]").send_keys data
sauce.find_element(:name, "Done").click
sauce.find_element(:name, "Save").click
end

Then(/^I should see "(.*?)" note added on home page in the sauce cloud$/) do |text|
note = sauce.find_element(:xpath,  "//window[1]/tableview[1]/cell[1]/text[1]")
note.attribute("value").should match text 
end
