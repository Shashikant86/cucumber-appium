Feature: Notes 

  As a iPhone user
  I want to PlainNote app
  So that I can add make note of everything happening in my life

Scenario: Add new note 
  Given I have App running with appium 
  When click + button 
  And I enter text "Data" and saved it 
  Then I should see "Data" note added on home page 