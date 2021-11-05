# frozen_string_literal: true

require_relative 'mini_cart'

module Headers
  class Header < SitePrism::Section
    section  :mini_cart, Headers::MiniCart, '.shopping_cart'

    element  :signed_in_name, 'a.account'
    element  :input_search, '#search_query_top'
    element  :btn_search, '.button-search'
    element  :a_shopping_cart, '.shopping_cart a[title="View my shopping cart"]'

    def search(product)
      input_search.set product
      btn_search.click
    end

    def delete_product_from_mini_cart(index)
      a_shopping_cart.hover
      mini_cart.btns_remove_product[index].click
    end

    def proceed_to_checkout
      a_shopping_cart.hover
      mini_cart.btn_proceed_to_checkout.click
    end
  end
end
