Feature: Notes 

  As a iPhone user
  I want to PlainNote app
  So that I can make note of everything happening in my life

Scenario: Add new note on sauce labs
  Given I have App running with appium on Sauce 
  When click + button using sauce driver
  And I enter text "Data" and saved it on sauce
  Then I should see "Data" note added on home page in the sauce cloud