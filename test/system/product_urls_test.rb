require "application_system_test_case"

class ProductUrlsTest < ApplicationSystemTestCase
  setup do
    @product_url = product_urls(:one)
  end

  test "visiting the index" do
    visit product_urls_url
    assert_selector "h1", text: "Product urls"
  end

  test "should create product url" do
    visit product_urls_url
    click_on "New product url"

    fill_in "Body", with: @product_url.body
    click_on "Create Product url"

    assert_text "Product url was successfully created"
    click_on "Back"
  end

  test "should update Product url" do
    visit product_url_url(@product_url)
    click_on "Edit this product url", match: :first

    fill_in "Body", with: @product_url.body
    click_on "Update Product url"

    assert_text "Product url was successfully updated"
    click_on "Back"
  end

  test "should destroy Product url" do
    visit product_url_url(@product_url)
    click_on "Destroy this product url", match: :first

    assert_text "Product url was successfully destroyed"
  end
end
