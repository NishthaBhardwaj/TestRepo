Feature: To upload the good file in the application
  Scenario: To upload file
    Given url _url
    And path '/upload-file'
    * def fileLocation = '../data/phone_numbers_3.txt'
    * def taskIdFromLocation = function(str) {return str.split('/').pop();}

      # location of file, name of the file, content-type header value
    And multipart file file = { read:'#(fileLocation)', filename:'phone_numbers_3.txt', Content-Type:'text/plain' }
    When method post
    Then status 201
    #And match response.message == '#notpresent'
    #And match response.details == '#notpresent'
    And print responseHeaders.Location
    * def id =  taskIdFromLocation(responseHeaders.Location[0])
    And print id
    And match responseHeaders contains { 'Location': '#present' }
    #And print response