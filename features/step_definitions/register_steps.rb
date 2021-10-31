# frozen_string_literal: true

When('select the registration option') do
  @valid_user = Factory::Dynamic.valid_user
  @login_page.go_to_registration @valid_user[:email]
end

When('register a new user with valid data') do
  @registration_page = RegistrationPage.new
  @registration_page.register_user @valid_user
end
