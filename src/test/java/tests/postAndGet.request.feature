Feature: Get Ariline details
  Background:
    * def details = call read('post.request.feature')

    Scenario: First create and then fetch
      Given url   "https://api.instantwebtools.net/v1/airlines/" + details.response.id
      When method get
      Then status 200