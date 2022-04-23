Feature: Variable Creation in Karate  Framework

  Background: Create and intialize variable
    * def app_name = "Phone"
  # <Gherkin keyword> def <Variable_name> = <value
  # * <variable_name> <value>
  Scenario: To create  a variable
    # use variable for repeating values
    # Storing the data from external file
    # In the matcher expresion
    # parsing the data from one feature file to another
    Given def var_int = 10
    And def var_string = "Karate"
    And print "String variable ===> " ,var_string
    And print "Int variable ===> " ,var_int
    * def var_int_2 = var_int + 10
    And print "Int variable ===> " ,var_int_2
    And print "Background variable ===> " ,app_name

    Scenario: Access the variable
      * def var_int_2 = 20
      Given print "Previous Secario ===> " ,var_int_2
      And print "Background variable ===> " ,app_name
  Scenario: To upload the good file in the application
    Given path '/upload-file'
    * fileLocation = '../data/phone_numbers_3.txt'
      # location of file, name of the file, content-type header value
    And multipart file file = { read:'#(fileLocation)', filename:'phone_numbers_3.txt', Content-Type:'text/plain' }
    When method post
    Then status 201
    #And match response.message == '#notpresent'
    #And match response.details == '#notpresent'
    And match responseHeaders contains { 'Location': '#present' }
    #And print response
  Scenario: To upload the good file in the application
    Given path '/upload-file'
    * def fileLocation = '../data/phone_numbers_3.txt'
    * def taskIdFromLocation = function(str) {return str.split('/').pop();}

      # location of file, name of the file, content-type header value
    And multipart file file = { read:'#(fileLocation)', filename:'phone_numbers_3.txt', Content-Type:'text/plain' }
    When method post
    Then status 201
    #And match response.message == '#notpresent'
    #And match response.details == '#notpresent'
    And print responseHeaders.Location
    And print taskIdFromLocation(responseHeaders.Location[0])
    And print task
    And match responseHeaders contains { 'Location': '#present' }
    #And print response

