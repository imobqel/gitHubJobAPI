Meta:
@smokeTest


Scenario: verify from service when add param description and location with valid value

Given Initialize a request to get Jobs API
When set description as variable with <descriptionValue> value
And set location as variable with <locationValue> value
And Lunch the API
Then Check the Response code is equal to 200
And Verify from the content Response body is not empty

Examples:
|descriptionValue|locationValue|
|java|Los Angeles|
|ruby|Los Angeles|
|java|new york|
|ruby|new york|
|Web Developer|new york|
|ruby|Chicago|
|java|Chicago|
| |  |
