Feature: Search Google Icons
  Scenario: Search Google News
    Given the user is on the google homepage
    When the user clicks the news icon
    Then the news page will get loaded

    Scenario: one more
      Given something else
      When xyz is clicked
      Then users should see abd
