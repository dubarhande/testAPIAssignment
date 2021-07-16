@smoke
Feature: Delete call testing.

  Scenario Outline: This is to validate get delete for test assignment.
    Given url baseURL
    When path 'api/v1/delete/' + "<id>"
    And method DELETE
    Then status 200
    And match response.message == 'Successfully! Record has been deleted'

    Examples:
      | id |  |  |
      | 1  |  |  |





