# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), '../../sections/*/*.rb')].sort.each { |file| require file }

class ProductPage < SitePrism::Page
  set_url '?id_product=1&controller=product&search_query=shirt&results=1'

  elements :colors, '#color_to_pick_list li'
  element  :big_image, '#bigpic'
end
