


Scenario: verify from service when add param Description and page with valid value

Given Initialize a request to get Jobs API
When set description as variable with <descriptionValue> value
And set page as variable with <numberPage> value
And Lunch the API
Then Check the Response code is equal to 200
And verify from the length content Response body is equal <numberPositions>

Examples:
|descriptionValue|numberPage|numberPositions|
| |1|50|
|swift|1|16|
|swift|2|0|
|ruby|1|44|
| ||50|