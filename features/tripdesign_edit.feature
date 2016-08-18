@TRIPDESIGN_EDIT
Feature:tripdesign_meetingpoint
  Background:
    * visit home page
    * login in from home page
    * Mouse over username
    * Go to the trip design page

  Scenario:edit draft
    When I click first draft
    Then jump to the draft page
    Then save and next

    # Scenario: choose meeting point
    When I select a meeting point
    And input the addresses
    Then save and next 
   
    #Scenario: input highlights
    When I input highlights
    Then save and next
    
    #Scenario: input stories 
    When I input stories
    Then save and next
    
    #Scenario: input description 
    When I input description 
    Then save and next

    #Scenario: input detail
    When I input details 
    Then save and next
 
    #Scenario: skip videos 
    Then save and next   
    
    #Scenario: upload pictures 
    When I upload pictures 
    Then save and next
