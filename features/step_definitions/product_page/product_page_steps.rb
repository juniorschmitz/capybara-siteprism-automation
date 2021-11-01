# frozen_string_literal: true

Given('is on the product page') do
  @product_page = ProductPage.new
  @product_page.load
end

When('change one color attribute') do
  @img_bfr = @product_page.big_image[:src]
  @product_page.colors.last.click
end

Then('the display image should change') do
  @img_aftr = @product_page.big_image[:src]
  expect(@img_bfr).not_to eql @img_aftr
end
