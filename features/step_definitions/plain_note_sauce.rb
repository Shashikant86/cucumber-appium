Given(/^I have App running with appium on Sauce$/) do
  
end

Then(/^I should navigate through app with sauce driver$/) do
sauce.find_element(:name, "Edit").click
sauce.find_element(:name, "Done").click
sauce.find_element(:name, "Help").click
end
