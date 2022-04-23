Feature: To get the variable set by karate-config.js
  Background: To get the value of myVarName
    * def localMyVarName = myVarName
    Given print "Background Variable value ==> ", localMyVarName

    Scenario: To get the value of myVarName
      Given print "Scenario Variable value ==> ", myVarName