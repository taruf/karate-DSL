Feature: Get Airline details
  Background:
    * def airlineDetails = read("../contracts/airlinedetails.json")
  Scenario: by its ID
  Given url   "https://api.instantwebtools.net/v1/airlines/321"
  When method get
  Then status 200
    And print "Response ---", response
    And match response.name == airlineDetails.name
    And match response == airlineDetails
