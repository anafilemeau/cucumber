Given(/^I delete a post$/) do
   @response1 = HTTParty.get("http://jsonplaceholder.typicode.com/posts/1")
   puts @response1
   @response2 = HTTParty.delete("http://jsonplaceholder.typicode.com/posts/1")
end

Then(/^I receive a response$/) do
  expect(@response2.code).to be(200)
end

Given(/^I delete a unavailable post$/) do
   @response = HTTParty.delete("http://jsonplaceholder.typicode.com/posts/7000")
end

Then(/^I receive an error code$/) do
  expect(@response.code).to be(404)
end
