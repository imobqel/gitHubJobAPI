Meta:
@smokeTest



Scenario: verify from service when add param zip code with valid value

Given Initialize a request to get Jobs API
When set location as variable with 10010 value
And Lunch the API
Then Check the Response code is equal to 200
And verify from the <expectedLocation> content Response body is existing

Examples:
|zipCodeValue|expectedLocation|
|1212322222|negative test|
|10010|New York, NY|
