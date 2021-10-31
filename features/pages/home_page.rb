# frozen_string_literal: true

require_relative './sections/sections'

class HomePage < SitePrism::Page
  set_url 'http://automationpractice.com/index.php'

  section :header, Sections::Header, '#header'
end
