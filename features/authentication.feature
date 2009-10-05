Feature: Authentication
  As a blog owner
  I want to sign in
  So that nobody else can post for me
  
  Scenario: Log In with HTTP Basic
    Given I am on the homepage
      And a username "JohnDoe"
      And a password "blahblah"
     When I authenticate with "JohnDoe" and "blahblah"
      And I follow "+"
     Then I should see "What do you have to say?"
     
  Scenario: Bad Login
    Given I am on the homepage
      And a username "JohnDoe"
      And a password "blahblah"
     When I authenticate with "JohnDoe" and "boobloo"
      And I follow "+"
     Then I should not see "What do you have to say?"
     
    
  
  
  