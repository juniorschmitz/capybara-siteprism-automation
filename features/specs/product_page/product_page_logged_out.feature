@full_regression
@product_page
@product_page_logged_out
Feature: Features on the Product Page
  As a site administrator
  I would like if the ecommerce had a good product page implemented
  So the users would be able to select and change attributes of the products they desire to buy

Background: Starts in the Product Page
  Given is on the product page

Scenario: Attributes selection
  When change one color attribute
  Then the display image should change

Scenario: Add product to the shopping cart
  When add the product to the cart
  Then the product should be added to the shopping cart

Scenario: Add two products to the shopping cart
  When increase the product quantity on the product page
  And add the product to the cart
  Then two quantities of the same product should be added to the shopping cart
  
Scenario: Try to add product to the wishlist
  When add the product to the wishlist
  Then the product should not be added to the wishlist
  