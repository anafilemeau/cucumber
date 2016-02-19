Feature: Find for TV products on walmart.com.br
 
Scenario: Buying a TV on the website        
 Given I am on the walmart homepage
 When I search for TV
 And I select a TV product
 And I check its details
 And I choose to buy it
 And I dismiss guarantee
