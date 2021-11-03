# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), '../../sections/*/*.rb')].sort.each { |file| require file }

class CheckoutResultPage < SitePrism::Page
  element :alert_success, '.alert-success'
  element :p_bank_wire_success, '.cheque-indent'
end
