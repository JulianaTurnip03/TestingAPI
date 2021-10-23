require 'uri'
require 'net/http'

expectedOutput = ['testing', '345', '23', 25]
actualOutput = [0]
Given("Access put URI") do
  uri = URI("http://dummy.restapiexample.com/api/v1/update/21")
  res = Net::HTTP.post_form(uri, 'name'=>'testing', 'salary'=>'345', 'age'=>'23', 'id'=>25)
  data = JSON.parse(res.body)

  actualOutput.push(data['name'])
  actualOutput.push(data['salary'])
  actualOutput.push(data['age'])
  actualOutput.push(data['id'])
end

Then("Compare result") do
  expect(actualOutput).to eq(expectedOutput)
end
