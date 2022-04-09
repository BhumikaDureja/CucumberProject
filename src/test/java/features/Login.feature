@F_Login
Feature: This feauture would be used to design the Login page of the application

  Background: Open the application
    Given I have opened the application in browser

  @Sanity
  Scenario: Validate the successful Login
    Given I have opened the application in browser
    When I click on the Login link
    And I enter username
    And I enter password
    And I click on the login Button
    Then I should be landed on the home page

   @Regression @Rapid
  Scenario: Validate the successful Login using test data
    Given I have opened the application in browser
    When I click on the Login link
    And I enter username "abc@xyz.com"
    And I enter password "Pqr@1234"
    And I click on the login Button
    Then I should be landed on the home page

  Scenario Outline: Validate the successful Login using multiple test data
    Given I have opened the application in browser
    When I click on the Login link
    And I enter username "<UserName>"
    And I enter password "<Password>"
    And I click on the login Button
    Then I should be landed on the home page

    Examples: 
      | UserName     | Password |
      | abc@xyz.com  | pqr@1234 |
      | bums@xyz.com | pqr@1234 |

  Scenario: Validate the Negative Login using test data
    Given I have opened the application in browser
    When I click on the Login link
    And I enter username "abc@xyz.com"
    And I enter password "Pqr@1234"
    And I click on the login Button
    Then I should get error message as "The email or password you have entered is invalid."
