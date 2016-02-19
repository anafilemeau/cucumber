Given(/^I search for an specific post$/) do
  @response = HTTParty.put("http://jsonplaceholder.typicode.com/posts/5", :body => {:title => 'HttParty + Cucumber'})
end

Then(/^I update it$/) do
 expect(@response.code).to be(200)
 expect(@response.body).to include("title")
 puts @response
end
