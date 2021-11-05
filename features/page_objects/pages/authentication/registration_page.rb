# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), '../../sections/*/*.rb')].sort.each { |file| require file }

class RegistrationPage < SitePrism::Page
  section :registration_form, Authentication::RegistrationForm, '#account-creation_form'

  def register_user(user)
    registration_form.gender_male.click
    registration_form.input_first_name.set user[:name]
    registration_form.input_last_name.set user[:last_name]
    registration_form.input_email.set user[:email]
    registration_form.input_password.set user[:password]
    registration_form.select_birth_day.select '10'
    registration_form.select_birth_month.select 'December'
    registration_form.select_birth_year.select '1995'
    registration_form.input_first_name_address.set user[:name]
    registration_form.input_last_name_address.set 'Test'
    registration_form.input_company_address.set 'Test'
    registration_form.input_address_line1.set 'Test address 1'
    registration_form.input_address_line2.set 'Test address 2'
    registration_form.input_city.set user[:city]
    registration_form.select_state.select 'Alabama'
    registration_form.input_postal_code.set '55555'
    registration_form.select_country.set 'United States'
    registration_form.input_additional_info.set user[:additional_info]
    registration_form.input_home_phone.set '5555555555'
    registration_form.input_mobile_phone.set '555555555'
    registration_form.input_address_alias.set 'Test Address'
    registration_form.btn_register.click
  end
end
