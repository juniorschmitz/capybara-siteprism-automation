# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), '../../sections/*/*.rb')].sort.each { |file| require file }

class ProductPage < SitePrism::Page
  set_url '{?id_product*}&controller=product'
  section  :modal_review_form, Modals::ReviewForm, '#id_new_comment_form'
  section  :modal_review_confirmation, Modals::ReviewConfirmation, '.fancybox-skin'
  section  :modal_product_added, Modals::ProductAdded, '#layer_cart'

  elements :colors, '#color_to_pick_list li'
  element  :big_image, '#bigpic'
  element  :a_open_modal_write_review, 'ul.comments_advices a.open-comment-form'
  element  :btn_add_to_cart, 'p#add_to_cart button'
  element  :btn_increase_quantity, 'i.icon-plus'
  element  :btn_decrease_quantity, 'i.icon-minus'
  element  :btn_wishlist, 'a#wishlist_button'
  element  :p_added_wishlist, 'p.fancybox-error'

  def write_review(review)
    a_open_modal_write_review.click
    modal_review_form.fill_form(review)
  end
end
