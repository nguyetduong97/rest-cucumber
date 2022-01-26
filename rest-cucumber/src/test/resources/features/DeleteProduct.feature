@Delete
Feature: Delete product

  Background: Add new a product
    Given the path "add" to the endpoint
    And the payload of the request with BrandName as "Dell", Features as "8GB RAM,1TB Hard Drive", LaptopName as "Latitude"
    When I perform the request to add new product
    Then the status code "200" should return
    And the product is added successfully with an integer Id

    Scenario: Delete product
      Given the path "delete" to the endpoint
      When I perform the request to delete product
      Then the status code "200" should return
      And the product is deleted successfully with an integer Id