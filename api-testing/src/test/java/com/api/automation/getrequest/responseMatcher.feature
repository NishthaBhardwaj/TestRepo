Feature: To validate the GET End point
  To validate the get end point response

  Background: Setup the base url
    Given url 'http://localhost:8080'

    Scenario: To get the data in JSON format
      Given path "/phone-numbers/tasks"
      And header Accept = 'application/json'
      When method get
      Then status 200
      And path response
      And match response ==

      """
      ["T1464318363"]
      """

  Scenario: To get the data in JSON format and validate using negate condition
    Given path "/phone-numbers/tasks"
    And header Accept = 'application/json'
    When method get
    Then status 200
    And path response
    And match response !=

      """
      ["T1464318364"]
      """

  Scenario: To get the data in JSON format and validate the specific property
    Given path "/phone-numbers/tasks"
    And header Accept = 'application/json'
    When method get
    Then status 200
    And path response
    #Match a value in complex nested payloads
    #And match response contains deep {"" : ""}
    And match header Content-Type == 'application/json'