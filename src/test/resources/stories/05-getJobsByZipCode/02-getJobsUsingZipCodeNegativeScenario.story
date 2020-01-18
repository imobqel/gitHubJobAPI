Meta:
@smokeTest


Scenario: verify from service when add param zip code invalid value

Given Initialize a request to get Jobs API
When set location as variable with <zipCodeValue> value
And Lunch the API
Then Check the Response code is equal to 200
And verify from the length content Response body is equal 0

Examples:
|zipCodeValue|
|1001727272772720|
|#############|
|%%%%%^^&&*(^|
