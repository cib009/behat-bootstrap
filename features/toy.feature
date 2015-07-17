@activity
Feature: toy buy
  In order to buy a product in toy page
  As a website user
  I am able to choose a product of catalog page and buy it

  Scenario: Add love stuffed to cart
    Given I am on "http://www.peluches-cel.com"
    When I follow "Peluche Enamorados"
    And I press "Añadir al carrito"
    Then I should see "Fue inlcuido en el carrito"
