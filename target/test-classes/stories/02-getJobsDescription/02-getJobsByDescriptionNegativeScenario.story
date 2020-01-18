



Scenario: 02-getPositionsUsingDescription - verify from service when add param description with invalid value

Given Initialize a request to get Jobs API
When set description as variable with <descriptionValue> value
And Lunch the API
Then Check the Response code is equal to 200
And Verify from the content Response body is empty as []

Examples:
|descriptionValue|
|hgdhgjsdhjgsdjhsh|
|$$$$$ $$$$$$|
|#### ######|
|3217862387 8723671|