Feature: View Posts
  As a random Internet surfer
  I want to view Steve's collected wisdom
  So that I can be entertained, enlightened, and/or exasperated

  Scenario: First look
    Given the first 2 diary posts
    When I go to the homepage
    Then I should see "Write a simple Tumblr-like aggregatorish"
     And I should see "The overall feature I want"
