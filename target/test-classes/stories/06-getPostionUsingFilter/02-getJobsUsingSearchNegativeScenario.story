Meta:
@smokeTest



Scenario: verify from service when add param Search with valid value

Given Initialize a request to get Jobs API
When set search as variable with <searchValue> value
And Lunch the API
Then Check the Response code is equal to 200
And Verify from the content Response body is not empty

Examples:
|searchValue|
|java script|
|android|
|java|
|web developer|