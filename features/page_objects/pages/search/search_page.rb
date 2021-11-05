# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), '../../sections/*/*.rb')].sort.each { |file| require file }

class SearchPage < SitePrism::Page
  sections :products, Products::Product, '.ajax_block_product'
  section  :quickview, Products::Quickview, '#layer_cart'

  def add_product_to_bag(index)
    product = products[index]
    product.image.hover
    product.wait_until_btn_add_to_bag_visible
    product.btn_add_to_bag.click
    quickview.btn_proceed_to_checkout.click
  end
end
