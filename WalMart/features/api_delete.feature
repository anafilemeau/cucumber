Feature: Deleting posts from API JSONplaceholder
 
Scenario: Deleting available posts      
 Given I delete a post
 Then I receive a response

Scenario: Deleting unavailable posts      
 Given I delete a unavailable post
 Then I receive an error code
