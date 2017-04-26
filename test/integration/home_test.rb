require 'test_helper'

# factiory girl is better gem for debug
class HomeTest < ActionDispatch::IntegrationTest
  test "loads correctly" do
    visit "/" # can also use path helps like product_path
    assert_equal 200, page.status_code

    # puts page.html
    # save_and_open_page
    # save_and_open_screenshot

  	assert page.has_selector?('.product', count: Product.count)
  end
end
