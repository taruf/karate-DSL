Feature: Create new Airline
  Background:
  * def id = Java.type("utils.RandomDataGenerator").RandomIdGenertor(10000,99999)
  Scenario: by providing details
    * def requestPayload =
      """
        {
          "id": #(id),
          "name": "Tycoon Airlines",
          "country": "Sri Lanka",
          "logo": "https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/lanka.png",
          "slogan": "Come Cry With Us",
          "head_quaters": "kohkaf, China",
          "website": "www.tycoon.com",
          "established": "1990"
        }
      """
    Given url  "https://api.instantwebtools.net/v1/airlines"
    And request requestPayload
    When method post
    Then status 200
    And print "Response ---", response
