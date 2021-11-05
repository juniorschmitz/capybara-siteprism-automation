# frozen_string_literal: true

Given('is on the product page') do
  @product_page = ProductPage.new
  @product_page.load(id_product: '1')
end

When('change one color attribute') do
  @img_bfr = @product_page.big_image[:src]
  @product_page.colors.last.click
end

Then('the display image should change') do
  @img_aftr = @product_page.big_image[:src]
  expect(@img_bfr).not_to eql @img_aftr
end

When('add the product to the cart') do
  @product_page.btn_add_to_cart.click
end

Then('the product should be added to the shopping cart') do
  @product_page.wait_until_modal_product_added_visible
  modal_product_added = @product_page.modal_product_added
  expect(modal_product_added.all_there?).to be_truthy
  expect(modal_product_added.h2_txt_product_added.text).to eql 'There is 1 item in your cart.'
end

When('increase the product quantity on the product page') do
  @product_page.btn_increase_quantity.click
end

Then('two quantities of the same product should be added to the shopping cart') do
  @product_page.wait_until_modal_product_added_visible
  modal_product_added = @product_page.modal_product_added
  expect(modal_product_added.all_there?).to be_truthy
  expect(modal_product_added.h2_txt_product_added.text).to eql 'There are 2 items in your cart.'
end

When('add the product to the wishlist') do
  @product_page.btn_wishlist.click
end

Then('the product should be added to the wishlist') do
  @product_page.wait_until_p_added_wishlist_visible
  expect(@product_page.p_added_wishlist.text).to eql 'Added to your wishlist.'
end
