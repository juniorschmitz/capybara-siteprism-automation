# frozen_string_literal: true

When('write a new review for the product') do
  review = Factory::Dynamic.product_review
  @product_page.write_review(review)
end

Then('the review should be posted') do
  modal_review_confirmation = @product_page.modal_review_confirmation
  expect(modal_review_confirmation.all_there?).to be true
  expect(modal_review_confirmation.p_message.text).to eql 'Your comment has been added and will be available once approved by a moderator'
end

Then('the product should not be added to the wishlist') do
  @product_page.wait_until_p_added_wishlist_visible
  expect(@product_page.p_added_wishlist.text).to eql 'You must be logged in to manage your wishlist.'
end
