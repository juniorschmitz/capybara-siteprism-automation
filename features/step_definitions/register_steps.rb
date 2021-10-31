# frozen_string_literal: true

When('select the registration option') do
  @email = Faker::Internet.email
  @login_page.go_to_registration @email
end

When('register a new user with valid data') do
  @registration_page = RegistrationPage.new
  @registration_page.register_random_user @email
end
