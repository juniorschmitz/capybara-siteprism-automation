# frozen_string_literal: true

When('exclude the product from the mini cart') do
  @header = @home_page.header
  @header.delete_product_from_mini_cart 0
end

Then('there should be 0 products on the mini cart') do
  expect(@header.mini_cart.span_empty_cart).to be_visible
  expect(@header.mini_cart.span_empty_cart.text).to include 'empty'
end

When('proceed to checkout from the mini cart') do
  @header = @home_page.header
  @header.proceed_to_checkout
end

Then('the checkout product overview page should be displayed') do
  @checkout_page = CheckoutPage.new
  expect(@checkout_page.current_url).to include 'controller=order'
end
