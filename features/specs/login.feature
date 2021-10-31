@full_regression
@login
Feature: Login on the Fake Ecommerce
  I would like to be able to login on the application
  As a common user
  So I can navigate and buy stuff

Background: Starts on the Login Page
  Given access the login page

Scenario: Login Successfuly
  And login with email "potato@teste.com" and password "abc123"
  Then should log in successfully

Scenario: Invalid Login
  And login with email "potato@teste.com" and password "abc1234"
  Then the login should fail
