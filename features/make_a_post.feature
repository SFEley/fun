Feature: Make a post
  In order to put stuff into the world
  As a logged-in user
  I want to post to my blog
  
Scenario: New post with title
  Given I am a logged in user
    And I am on the home page
  When I follow "New post"
   And I fill in "Title" with "This is my test post"
   And I fill in "Message" with "This is a test message body."
   And I press "Post!"
  Then I should see "This is my test post"
   And I should see "This is a test message body."
   

   




  
