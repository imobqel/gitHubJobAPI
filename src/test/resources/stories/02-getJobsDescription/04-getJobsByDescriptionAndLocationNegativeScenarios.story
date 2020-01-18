Meta:
@smokeTest


Scenario: verify from service when add param description as valid value and location with invalid value

Given Initialize a request to get Jobs API
When set description as variable with <descriptionValue> value
And set location as variable with <locationValue> value
And Lunch the API
Then Check the Response code is equal to 200
And Verify from the content Response body is empty as []

Examples:
|descriptionValue|locationValue|
|java|Test 1234|
|ruby|2121332123|
|java|$$$$$$|
|ruby|///////|
|Web Developer|@@@@@|
|ruby|000000000|
|java|%^&*%$|



Scenario: verify from service when add param description as invalid value and location with valid value

Given Initialize a request to get Jobs API
When set description as variable with <descriptionValue> value
And set location as variable with <locationValue> value
And Lunch the API
Then Check the Response code is equal to 200
And Verify from the content Response body is empty as []

Examples:
|descriptionValue|locationValue|
|Test 1234|Los Angeles|
|hgdhgjsdhjgsdjhsh|Los Angeles|
|$$$$$ $$$$$$|new york|
|#### ######|new york|
|3217862387 8723671|new york|
|%^&*%$|Chicago|
|000000000|Chicago|




Scenario: verify from service when add param description and location with with invalid values

Given Initialize a request to get Jobs API
When set description as variable with <descriptionValue> value
And set location as variable with <locationValue> value
And Lunch the API
Then Check the Response code is equal to 200
And Verify from the content Response body is empty as []

Examples:
|descriptionValue|locationValue|
|Test 1234ssasa  |              |
|                |Test 1234ssasa|
|hgdhgjsdhjgsdjhsh|Los@@@ngeles|
|$$$$$ $$$$$$|new+/@#york|
|#### ######|new--->york|
|3217862387 8723671|!!!!york!!!|
|%^&*%$|Chicag000@@|
|000000000|&*%$|