Feature: To validate the GET End point
  To validate the get end point response

  Background: Setup the base url
    Given url 'http://localhost:8080'

    Scenario: To get the data in JSON format
      Given path "/phone-numbers/tasks"
      And header Accept = 'application/json'
      When method get
      Then status 200
      #And match response.[0].jobId = 1

   Scenario: To get the data in JSON format and validate using fuzzy matcher
     Given path "/phone-numbers/tasks"
     And header Accept = 'application/json'
     When method get
     Then status 200
     And match response.[0].jobId == '#present'
     And match response.[0].taskId == '#notnull'
     And match response.[0].jobTitle == '#string'