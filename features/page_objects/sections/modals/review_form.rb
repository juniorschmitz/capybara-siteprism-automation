# frozen_string_literal: true

module Modals
  class ReviewForm < SitePrism::Section
    element  :input_title, '#comment_title'
    element  :input_content, '#content'
    element  :btn_send, '#submitNewMessage'

    def fill_form(review)
      input_title.set(review[:title])
      input_content.set(review[:content])
      btn_send.click
    end
  end
end
