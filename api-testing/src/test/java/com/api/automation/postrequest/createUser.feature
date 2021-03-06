Feature: To create the User in the application
  Background: Create the base url
    Given url "http://localhost:8080"

  Scenario: To create the User in JSON Format
    Given path "/users"
    * def name = function() {return Math.random();}
    And request { "name": "#(name())", "birthDate": "2022-04-19T20:00:54.343+00:00" }
    And headers {Accept: 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201
    And print header

  Scenario: To create the User in JSON Format from file
    Given path "/users"
    * def body = read("data/User.json")
    And request body
    And headers {Accept: 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201
    And print header



    