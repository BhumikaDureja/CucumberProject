Feature: This feauture would be used to design the Add and Sub function of Calculator

  Scenario: To Add two numbers
    Given I have a Calculator
    When I add 4 and 5
    Then I should get the result as 9

  Scenario: To Sub two numbers
    Given I have a Calculator
    When sub 6 and 3
    Then I should get the result as 3

  Scenario Outline: To Add multiple numbers
    Given I have a Calculator
    When I add <num1> and <num2>
    Then I should get the result as <result>

    Examples: 
      | num1 | num2 | result |
      |    4 |    4 |      8 |
      |    6 |    7 |     13 |
      |   10 |   11 |     21 |

  Scenario: Add multiple numbers using Cucumber data table
    Given I have a Calculator
    When I add below numbers
      | 4 |
      | 5 |
      | 7 |
      | 8 |
    Then I should get the result as 24

  Scenario: Add multiple numbers using Cucumber data table
    Given I have a Calculator
    When I add below numbers using List
      |  4 |
      |  5 |
      |  7 |
      |  8 |
      | 10 |
    Then I should get the result as 34

  Scenario: To calculate the total bill of the order   #can also run it through data table, specifying correct row and columns numbers
    Given I have a Calculator
    When I order below items
      | Coffee | 23 |
      | tea    | 27 |
      | burger | 50 |
    Then I should get the result as 100

  Scenario: To calculate the total bill of the order using quantity
    Given I have a Calculator
    When I order below items and quantity
      | Coffee | 1 | 10 |
      | tea    | 2 | 20 |
      | burger | 3 | 30 |
    Then I should get the result as 140
