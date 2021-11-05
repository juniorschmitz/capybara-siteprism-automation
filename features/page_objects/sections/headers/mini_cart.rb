# frozen_string_literal: true

module Headers
  class MiniCart < SitePrism::Section
    elements :btns_remove_product, '.ajax_cart_block_remove_link'
    element  :btn_proceed_to_checkout, '#button_order_cart'
    element  :span_empty_cart, '.ajax_cart_no_product '

    def search(product)
      input_search.set product
      btn_search.click
    end

    def delete_product_from_mini_cart
      a_shopping_cart.hover
    end
  end
end
