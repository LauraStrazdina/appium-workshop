class ScreenIntro < ScreenBase
  attr_accessor :driver
  def initialize(driver)
    @base = element(:id, 'content')
    #Izvēlos šo elementu meklēt pēc id, jo tas ir unikāls
    @button_intro_close = element(:id, 'close_intro')
    #Izvēlos šo elementu meklēt pēc id, jo tas ir unikāls
    @button_intro_footer_image = element(:id, 'intro_footer_image')
    #Izvēlos šo elementu meklēt pēc id, jo tas ir unikāls
    @button_intro_text_header = element(:id, 'intro_text_header')
    #Izvēlos šo elementu meklēt pēc id, jo tas ir unikāls
    @button_intro_text_footer = element(:id, 'intro_text_footer')
    @image_page = element(:id, 'page_image')
    @driver = driver
  end

  def visible?
    @driver.find_element(@base[:type], @base[:value])
    @driver.find_element(@button_intro_close[:type], @button_intro_close[:value])
    @driver.find_element(@button_intro_footer_image[:type], @button_intro_footer_image[:value])
    @driver.find_element(@button_intro_text_header[:type], @button_intro_text_header[:value])
    @driver.find_element(@button_intro_text_footer[:type], @button_intro_text_footer[:value])
    @driver.find_element(@image_page[:type], @image_page[:value])
  end
end
