# frozen_string_literal: true

module Modals
  class ReviewConfirmation < SitePrism::Section
    element  :a_close, 'a[title="Close"]'
    element  :h2_title, 'h2'
    element  :p_message, 'p:not(.submit)'
    element  :btn_submit, '.submit button'
  end
end
