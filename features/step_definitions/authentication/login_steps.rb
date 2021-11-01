# frozen_string_literal: true

Given('access the login page') do
  @login_page = LoginPage.new
  @login_page.load
end

Given('login with the user {string}') do |user|
  the_user = Factory::Static.static_data(user)
  @login_page.login_with(the_user['email'], the_user['password'])
end

Then('should log in successfully') do
  expect(@login_page.header).to have_signed_in_name
end

Then('the login should fail') do
  expect(@login_page).to have_alert_danger
  expect(@login_page.alert_danger.text).to include 'Invalid password'
end
