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

   Scenario: Send opinion about a product
     Given I am on "http://www.peluches-cel.com"
     When I follow "Peluche Enamorados"
     And I follow "SOBRE 20cm"
     And I follow "Opiniones"
     And I fill in "Apodo" with "McTester"
     And I fill in "Resumen de su opinión" with "Resumen McTester"
     And I fill in "Opinión" with "Me gusta"
     And I press "Enviar opinión"
     Then I should see "Your review has been accepted for moderation"

  Scenario: Add two products to cart, check into cart and make ends cart without paying
    Given I am on "http://www.peluches-cel.com"
    When I follow "Peluche Enamorados"
    And I follow "Pareja PERROS"
    And I press "Añadir al carrito"
    And I press "Continuar comprando"
    And I follow "Peluche Enamorados"
    And I follow "SOBRE 20cm"
    And I press "Añadir al carrito"
    And I should see "Pareja PERROS"
    And I should see "SOBRE 20cm"
    And I should see "Fue inlcuido en el carrito"
    And I press "Realizar Pedido"
    Then I should see "Método de pago"
    And I should see "Revise su pedido"

