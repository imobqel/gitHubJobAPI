Meta:
@smokeTest


Scenario: verify from service when add param lat and long with valid value

Given Initialize a request to get Jobs API
When set lat as variable with <latValue> value
When set long as variable with <longValue> value
And Lunch the API
Then Check the Response code is equal to 200
And verify from the <expectedLocation> content Response body is existing

Examples:
|latValue|longValue|expectedLocation|
|40.7128|-74.0060|New York, NY|
|41.8781|-87.6298|Chicago|
