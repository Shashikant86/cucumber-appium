
Given(/^I have App running with appium$/) do
 # Make sure you have started appium server
end

Then(/^I should navigate through app$/) do
selenium.find_element(:name, "Edit").click
selenium.find_element(:name, "Done").click
selenium.find_element(:name, "Help").click
sleep 2
selenium.find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIAButton[1]").click
selenium.find_element(:name, "Sync").click
end