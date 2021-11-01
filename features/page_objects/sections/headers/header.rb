# frozen_string_literal: true

module Headers
  class Header < SitePrism::Section
    element  :signed_in_name, 'a.account'
    element  :input_search, '#search_query_top'
    element  :btn_search, '.button-search'

    def search(product)
      input_search.set product
      btn_search.click
    end
  end
end
