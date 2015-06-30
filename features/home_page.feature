Feature: Home Page

  Scenario: Viewing the applications home page
    Given there is a comment titled "first comment" with "Hello world" as content
    When I am on the homepage
    Then Then I should see the "first comment" comment
