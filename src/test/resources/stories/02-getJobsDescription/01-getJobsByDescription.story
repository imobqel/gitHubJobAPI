



Scenario: verify from API when add param description with valid value

Given Initialize a request to get Jobs API
When set description as variable with <descriptionValue> value
And Lunch the API
Then Check the Response code is equal to 200
And Verify from the content Response body is not empty

Examples:
|descriptionValue|
|swift|
|android|
|java|
|java script|
|web developer|
|java script|

