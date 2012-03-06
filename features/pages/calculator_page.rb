require 'page-object'

class CalculatorPage
  include PageObject

  page_url "http://localhost:4567/calculator.html"

  text_field :display, :id => 'display'
  button :plus, :id => 'plus'
  button :equals, :id => 'equals'
  button :two, :id => 'two'
  button :four, :id => 'four'

end
