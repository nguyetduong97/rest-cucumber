@updateproduct
Feature: Update an existing product

  Background:
    Given the path "add" to the endpoint
    And the payload of the request with BrandName as "Dell", Features as "8GB RAM,1TB Hard Drive", LaptopName as "Latitude"
    When I perform the request to add new product
    Then the status code "200" should return
    And the product is added successfully with an integer Id

  Scenario: Post and then update the details
    Given the path "update" to the endpoint
    When I perform the PUT request with id and BrandName as "Dell", Features as "8GB RAM,1TB Hard Drive,15 Inch Lcd,Touch Pad", LaptopName as "Latitude"
    Then Status code "200" should returned
#    And Details should get updated