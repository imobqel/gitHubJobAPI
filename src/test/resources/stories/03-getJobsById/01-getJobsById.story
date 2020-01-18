


Scenario: verify from service when get Positions by id not existing

Given Initialize a request to get Jobs API
When Lunch the API
Then Check the Response code is equal to 404

