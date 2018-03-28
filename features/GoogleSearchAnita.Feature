@testtag
Feature: Google Search

  @actual
Scenario Outline: User searches for data on google homepage
Given The user is on Google Search page
  When the user searches forasd <sometestdata> in the textbox
  Then search relelated tado the data will be displayed
  Examples:
  |sometestdata|
  |navitat      |
  |fish         |
  #|red          |

  Scenario: Yaml Trial
    Given The user is on Google Search page
    Then verify the user is able to accesseses data from yml file
