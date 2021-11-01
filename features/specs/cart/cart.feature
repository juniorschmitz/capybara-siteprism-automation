@full_regression
@cart
Feature: Cart features
  I would like to be able to login on the application
  As a common user
  So I can navigate and buy stuff

Background: Starts on the cart logged in and with a product
  Given access the login page
  When login with the user "valid_login"
  When search for the product "shirt"
  And add the product to the shopping cart

Scenario: Exclude product from the cart
  When exclude the product from the shopping cart
  Then the cart should be empty

Scenario: Increase product quantity
  When increase the product quantity
  Then the product quantity should be increased

Scenario: Decrease product quantity
  When decrease the product quantity
  Then the cart should be empty

Scenario: Continue shopping
  When continue shopping
  Then should go back to the search page

Scenario: Proceed to checkout
  When proceed with the checkout
  Then the address page should be displayed