Given(/^I add a new post$/) do
  @response = HTTParty.post("http://jsonplaceholder.typicode.com/posts", :body => {:userId => '1000', :title => 'HttParty', :body => 'Hello Ana'})
end

Then(/^I receive a sucessful response$/) do
  expect(@response.code).to be(201)
end
