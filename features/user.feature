Feature: Users
  Scenario: Create a new user
    Given I am on the home page
    When I follow "Sign Up"
    And I fill in the following:
      | email                 | dan@example.com |
      | password              | pass            |
      | password_confirmation | pass            |
    And I press "Sign Up"
    Then I should see "Account successfully created!"

  Scenario: A user logs in
    Given the following user:
      | email                 | dan@example.com |
      | password              | pass            |
      | password_confirmation | pass            |
    Given I am on the home page
    When I follow "Log In"
    And I fill in the following:
      | email    | dan@example.com |
      | password | pass            |
    And I press "Log In"
    Then I should see "Logged in successfully!"
