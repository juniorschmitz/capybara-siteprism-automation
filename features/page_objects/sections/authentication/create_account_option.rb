# frozen_string_literal: true

module Authentication
  class CreateAccountOption < SitePrism::Section
    element  :input_email, '#email_create'
    element  :btn_go_to_create_account, '#SubmitCreate'
  end
end
