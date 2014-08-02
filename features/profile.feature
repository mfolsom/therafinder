Feature: User Profile
  In order to create my online presence
  As a registered user
  I should be able to create a new profile

  Scenario: new user signing up sees profile form
    Given I am on the homepage
    And I sign up
    Then I should see the first step in the profile form

  Scenario: signed in user creates a new profile
    Given I am registered
    And I am on the homepage
    When I sign in
    And I have filled in my profile details
    Then I should be able to see my profile page
    
