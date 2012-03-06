require 'page-object'

class SamplePage
  include PageObject

  page_url "http://localhost:4567/sample.html"

  button :true, :id => 'true'
  button :false, :id => 'false'
  text_field :result, :id => 'result'

end
