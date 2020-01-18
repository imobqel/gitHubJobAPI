


Scenario: verify from service when add param page with valid value

Given Initialize a request to get Jobs API
When set page as variable with <numberPage> value
And Lunch the API
Then Check the Response code is equal to 200
And verify from the length content Response body is equal <numberPositions>

Examples:
|numberPage|numberPositions|
|0|50|
|1|50|
|2|50|
|3|50|
|222|0|