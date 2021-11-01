# frozen_string_literal: true

module Authentication
  class RegistrationForm < SitePrism::Section
    element  :gender_male, '#uniform-id_gender1'
    element  :input_first_name, '#customer_firstname'
    element  :input_last_name, '#customer_lastname'
    element  :input_email, '#email'
    element  :input_password, '#passwd'
    element  :select_birth_day, 'select#days', visible: false
    element  :select_birth_month, 'select#months', visible: false
    element  :select_birth_year, 'select#years', visible: false
    element  :input_first_name_address, '#firstname'
    element  :input_last_name_address, '#lastname'
    element  :input_company_address, '#company'
    element  :input_address_line1, '#address1'
    element  :input_address_line2, '#address2'
    element  :input_city, '#city'
    element  :select_state, '#id_state', visible: false
    element  :input_postal_code, '#postcode'
    element  :select_country, '#id_country', visible: false
    element  :input_additional_info, '#other'
    element  :input_home_phone, '#phone'
    element  :input_mobile_phone, '#phone_mobile'
    element  :input_address_alias, '#alias'
    element  :btn_register, '#submitAccount'
  end
end
