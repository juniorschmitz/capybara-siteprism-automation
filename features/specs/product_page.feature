@full_regression
@product_page
Feature: Features on the Product Page
  As a site administrator
  I would like if the ecommerce had a good product page implemented
  So the users would be able to select and change attributes of the products they desire to buy

Scenario: Attributes selection
  Given is on the product page
  When changes one color attribute
  Then the display image should change
  