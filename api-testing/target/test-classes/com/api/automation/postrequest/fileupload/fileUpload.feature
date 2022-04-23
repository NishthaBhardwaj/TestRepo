Feature: To upload the file using the Karete framework
  Background: Create the base url
    Given url 'http://localhost:8080'
    * def taskID = ''

  Scenario: To upload the bad file in the application
    Given path '/upload-file'
      # location of file, name of the file, content-type header value
    And multipart file file = { read:'uploadBadFile.txt', filename:'uploadBadFile.txt', Content-Type:'text/plain' }
    When method post
    Then status 400
    And match response.message == '#notnull'
    And match response.details == '#notnull'
    And match responseHeaders contains { 'Location': '#notpresent' }
    #And print response




  Scenario: To upload the good file in the application calling by another file
    #Given call read("../../submitFile.feature")
    * def postRequest = call read("../../submitFile.feature") {_url:'http://localhost:8080'}
    And print postRequest.id
    * def resourceName = "/phone-numbers/" + postRequest.id

    # Get Request for getting the phone numbers using taskId
    Given path resourceName
    When method get
    Then status 200
    And match response.taskID == postRequest.id