Meta:
@smokeTest


Scenario: verify from service when add param Search with invalid value

Given Initialize a request to get Jobs API
When set search as variable with <searchValue> value
And Lunch the API
Then Check the Response code is equal to 200
And Verify from the content Response body is empty as []

Examples:
|searchValue|
|#$#$#$#$#$#$###$#$#$#$#$#$$###|
|aaaccacacacabvsabnbsbnsadbnsnb|
|98723479824398734983478997832479834279832|

