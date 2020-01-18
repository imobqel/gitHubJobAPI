


Scenario: verify from service when add param description and location also full time with valid value aslo

Given Initialize a request to get Jobs API
When set description as variable with <descriptionValue> value
And set location as variable with <locationValue> value
And set full_time as variable with <fullTimeValue> value
And Lunch the API
Then Check the Response code is equal to 200
And Verify from the content Response body is not empty

Examples:
|descriptionValue|locationValue|fullTimeValue|
|java|Los Angeles|true|
|java|Los Angeles|false|
|ruby|Los Angeles|true|
|ruby|Los Angeles|false|
|java|new york|true|
|java|new york|false|
|ruby|new york|true|
|ruby|new york|false|
|Web Developer|new york|true|
|Web Developer|new york|false|
|ruby|Chicago|true|
|ruby|Chicago|false|
|java|Chicago|true|
|java|Chicago|false|
| |  |true|
| |  |false|