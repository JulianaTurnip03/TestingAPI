require 'uri'
require 'net/http'

expectedOutput = [String, String, String, String, String]
actualOutput = [0]
Given("Access URI") do
  uri = URI("http://dummy.restapiexample.com/api/v1/employees")
  res = Net::HTTP.get_response(uri)
  data = JSON.parse(res.body)

  actualOutput.push(data[0]['id'].class)
  actualOutput.push(data[0]['employee_name'].class)
  actualOutput.push(data[0]['employee_salary'].class)
  actualOutput.push(data[0]['employee_age'].class)
  actualOutput.push(data[0]['profile_image'].class)
end

Then("Compare") do
  expect(actualOutput).to eq(expectedOutput)
end
