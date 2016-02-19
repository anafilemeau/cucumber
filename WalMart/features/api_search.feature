Feature: Searching posts on API JSONplaceholder
 
Scenario: Searching available posts      
 Given I search for available posts
 Then I find a list with all of them

Scenario: Searching details of posts by ID     
 Given I search for a specific post by ID
 Then I find its details

Scenario: Searching unavailable posts    
 Given I search for a unavailable post
 Then I receive an error
