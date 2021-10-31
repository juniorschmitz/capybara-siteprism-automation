@full_regression
@checkout
Feature: Checkout flows on the Fake Ecommerce
  As a site administrator
  I would like to have a checkout flow delivered
  So the Ecommerce users could buy clothes

Scenario: Common Checkout Flow using Check as Payment
  Given access the login page
  When login with the user "valid_login"
  And searches for the product "shirt"
  And add the product to the shopping cart
  And select the address and delivery method
  And finalize the checkout with payment by check
  Then the order should be placed successfully

Scenario: Common Checkout Flow using Bank Wire as Payment
  Given access the login page
  When login with the user "valid_login"
  And searches for the product "shirt"
  And add the product to the shopping cart
  And select the address and delivery method
  And finalize the checkout with payment by Bank Wire
  Then the order should be placed successfully

Scenario: Common Checkout Flow using Bank Wire as Payment with two products on the cart
  Given access the login page
  When login with the user "valid_login"
  And adds one product to the shopping cart
  And adds a second product to the shopping cart
  # And searches for the product "shirt"
  # And add the product to my bag
  And select the address and delivery method
  And finalize the checkout with payment by Bank Wire
  Then the order should be placed successfully