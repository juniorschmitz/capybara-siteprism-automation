# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), '../../sections/*/*.rb')].sort.each { |file| require file }

class SearchPage < SitePrism::Page
  sections :products, Products::Product, '.ajax_block_product'
  section  :quickview, Products::Quickview, '#layer_cart'

  def add_product_to_bag(product_index)
    products[product_index].image.hover
    products[product_index].btn_add_to_bag.click
    quickview.btn_proceed_to_checkout.click
  end
end
