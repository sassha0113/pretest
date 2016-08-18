@TRIPDESIGN_NEW
Feature:tripdesign_new
  Background:
    * login in
    * Mouse over username
    * Go to the trip design page

  Scenario:Create new trip
    When I click Create new trip
    Then jump to the new trip page

    #  Scenario: Input title city and category
    When I input title
    And select city
    And choose the category
    Then save and next

    # Scenario: choose meeting point
    When I choose a meeting point
    And input the address
    Then save and next 
   
    # Scenario: input highlight
    When I input highlight
    Then save and next
