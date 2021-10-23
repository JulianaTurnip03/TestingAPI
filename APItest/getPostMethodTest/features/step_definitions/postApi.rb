require 'uri'
require 'net/http'

expectedOutput = ['test', '123', '23', 25]
actualOutput = [0]

Given("Access post URI") do
  uri = URI("http://dummy.restapiexample.com/api/v1/create")
  res = Net::HTTP.post_form(uri, 'name'=>'test', 'salary'=>'123', 'age'=>'23', 'id'=>25)
  data = JSON.parse(res.body)

  actualOutput.push(data['name'])
  actualOutput.push(data['salary'])
  actualOutput.push(data['age'])
  actualOutput.push(data['id'])
end

Then("Compare result") do
  expect(actualOutput).to eq(expectedOutput)
end
