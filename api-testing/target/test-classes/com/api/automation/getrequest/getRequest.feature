Feature: To test the get end point of the application
  To test different get end point with different data formate supported by the application

  Background: Set the Base path
    Given url 'http://localhost:8080'
    And print "===========This the Background keyword ============="

  Scenario: To get the data for specific Task ID from application in JSON format
    Given path 'phone-numbers/T1464318363'
    And header Accept = 'application/json'
    #Base path + context path
    When method get #send the get request
    Then status 200

  Scenario: To get all the data from application in JSON format using path variable
    And path '/phone-numbers/tasks'
    When method get # send the get request
    Then status 200