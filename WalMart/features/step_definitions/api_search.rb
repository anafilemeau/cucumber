Given(/^I search for available posts$/) do
  @response = HTTParty.get("http://jsonplaceholder.typicode.com/posts")
end

Then(/^I find a list with all of them$/) do
 expect(@response.code).to be(200)
 expect(@response).not_to be_empty
end

Given(/^I search for a specific post by ID$/) do
  @response = HTTParty.get("http://jsonplaceholder.typicode.com/posts/1")
end

Then(/^I find its details$/) do
  expect(@response.code).to be(200)  
  expect(@response.body).to include("userId", "id", "title", "body")
end

Given(/^I search for a unavailable post$/) do
  @response = HTTParty.get("http://jsonplaceholder.typicode.com/posts/7000")
end

Then(/^I receive an error$/) do
 expect(@response.code).to be(404)  
end
