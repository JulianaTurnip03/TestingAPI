require 'uri'
require 'net/http'

expectedOutput = [String, String]
actualOutput = [0]
Given("Access URI") do
  uri = URI("http://dummy.restapiexample.com/api/v1/delete/2")
  res = Net::HTTP.get_response(uri)
  data = JSON.parse(res.body)

  actualOutput.push(data[0]['status'].class)
  actualOutput.push(data[0]['message'].class)
end

Then("Compare") do
  expect(actualOutput).to eq(expectedOutput)
end
