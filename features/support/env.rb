require 'watir-webdriver'

$browser = Watir::Browser.new :firefox

at_exit do
  $browser.close
end
