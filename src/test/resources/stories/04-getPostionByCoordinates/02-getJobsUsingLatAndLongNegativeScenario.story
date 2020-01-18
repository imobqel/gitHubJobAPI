Meta:
@smokeTest

Scenario: verify from service when add param lat and long with invalid value

Given Initialize a request to get Jobs API
When set lat as variable with <latValue> value
And set long as variable with <longValue> value
And Lunch the API
Then Check the Response code is equal to 200
And verify from the length content Response body is equal <numberPositions>

Examples:
|latValue|longValue|numberPositions|
|11111111111|22222222222222|0|
|33333333333|44444444444444|0|