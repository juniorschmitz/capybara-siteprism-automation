# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), '../../sections/*/*.rb')].sort.each { |file| require file }

class HomePage < SitePrism::Page
  set_url ''

  section :header, Headers::Header, '#header'
end
