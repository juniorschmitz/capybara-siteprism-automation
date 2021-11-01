# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), '../../sections/*/*.rb')].sort.each { |file| require file }

class CheckoutResultPage < SitePrism::Page
  element :alert_success, '.alert-success'
end
