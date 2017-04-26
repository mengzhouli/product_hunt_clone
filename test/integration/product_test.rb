require 'test_helper'

class ProductTest < ActionDispatch::IntegrationTest
  test "lets a signed in user create a new product" do
    login_as users(:george)
    visit "/products/new"

    fill_in "product_name", with: "Le Wagon"
    fill_in "product_tagline", with: "Change your life: Learn to code"
    click_button 'Create Product'
    # the above will fail if using content of butoon like Create Product beacuse conetnetn changes easily, so must use SCSS claa to beter identify
    # Should be redirected to Home with new product
    assert_equal root_path, page.current_path
    assert_equal 200, page.status_code
    assert page.has_content?("Change your life: Learn to code")
  end
end
