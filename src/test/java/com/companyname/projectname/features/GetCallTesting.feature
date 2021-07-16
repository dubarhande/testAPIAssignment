@smoke
Feature: Get call testing.

  Scenario Outline: This is to validate get call for test assignment.
    Given url baseURL
    When path 'api/v1/employee/' + "<id>"
    And method GET
    Then status 200
    And match response.status == 'success'
    And match response.data.id == <id>
    And match response.data.employee_name == "<EmployeeName>"

    Examples:
      | id | EmployeeName |  |
      | 2  | Tiger Nixon  |  |





