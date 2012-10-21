require "test_helper"

class AuthControllerTest < AcceptanceTest
  it 'should load the homepage' do
    visit '/'
    page.must_have_content 'SNIP42'
  end
end
