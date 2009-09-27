Feature: View Posts
  As a random Internet surfer
  I want to view Steve's collected wisdom
  So that I can be entertained, enlightened, and/or exasperated

  Scenario: First look
    Given the first 2 diary posts
    When I go to the homepage
    Then I should see "Write a simple Tumblr-like aggregatorish"
     And I should see "The overall feature I want"

  Scenario: Formatted text
   Given the first 5 diary posts
   When I go to the homepage
   Then I should see "Deployment!"
    And I should not see "====="
    
  Scenario: Display order
   Given the first 6 diary posts
   When I go to the homepage
   Then I should see "Phase 2: Formatting the Text" before "Deployment!"
    And I should see "Deployment!" before "Starting Out"
   
  # Scenario: Time Ago
  #  Given a post from 5 minutes ago
  #   When I go to the homepage
  #   Then I should see "5 minutes ago"
  #     