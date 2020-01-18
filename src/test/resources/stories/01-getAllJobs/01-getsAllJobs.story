Meta:
@smokeTest


Scenario: Get All Jobs

Given Initialize a request to get Jobs API
When Lunch the API
Then Check the Response code is equal to 200