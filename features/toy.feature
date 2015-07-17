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

  Scenario: Add two products to cart and check into cart
    Given I am on "http://www.peluches-cel.com"
    When I follow "Peluche Enamorados"
    And I follow "Pareja PERROS"
    And I press "Añadir al carrito"
    And I press "Continuar comprando"
    And I follow "Peluche Enamorados"
    And I follow "SOBRE 20cm"
    And I press "Añadir al carrito"
    Then I should see "Pareja PERROS"
    And I should see "SOBRE 20cm"
    And I should see "Fue inlcuido en el carrito"

  Scenario: Check a description and price in detail of stuffed
    Given I am on "http://www.peluches-cel.com"
    When I follow "Peluche Enamorados"
    And I follow "SOBRE PQ 15cm"
    Then I should see "Descripción del producto"
    And I should see "€" in the ".price" element
