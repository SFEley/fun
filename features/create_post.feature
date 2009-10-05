Feature: Create post
  As the blog owner
  I want to create new posts
  So that people come back more than once
  
  Scenario: Make the post
    Given I am authenticated
      And I am on the homepage
     When I follow "+"
      And I fill in "What do you have to say" with the text
        """
        Test post!
        ==========
        This is _just a test._
        
        But ain't it a **good** one?
        """
      And I press "Say it!"
     Then I should see "Test post!"
      And I should not see "What do you have to say?"
  