
Given(/^I have App running with appium$/) do
 # Make sure you have started appium server 
end

When(/^click \+ button$/) do
  selenium.find_element(:name, "Add").click
end

When(/^I enter text "(.*?)" and saved it$/) do |data|

selenium.find_element(:xpath, "//window[1]/scrollview[1]/textview[1]").send_keys data
selenium.find_element(:name, "Done").click
selenium.find_element(:name, "Save").click
end

Then(/^I should see "(.*?)" note added on home page$/) do |text|
note = selenium.find_element(:xpath,  "//window[1]/tableview[1]/cell[1]/text[1]")
note.attribute("value").should match text 
end