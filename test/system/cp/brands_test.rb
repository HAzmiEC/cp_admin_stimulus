require "application_system_test_case"

class Cp::BrandsTest < ApplicationSystemTestCase
  setup do
    @cp_brand = cp_brands(:one)
  end

  test "visiting the index" do
    visit cp_brands_url
    assert_selector "h1", text: "Brands"
  end

  test "should create brand" do
    visit cp_brands_url
    click_on "New brand"

    click_on "Create Brand"

    assert_text "Brand was successfully created"
    click_on "Back"
  end

  test "should update Brand" do
    visit cp_brand_url(@cp_brand)
    click_on "Edit this brand", match: :first

    click_on "Update Brand"

    assert_text "Brand was successfully updated"
    click_on "Back"
  end

  test "should destroy Brand" do
    visit cp_brand_url(@cp_brand)
    click_on "Destroy this brand", match: :first

    assert_text "Brand was successfully destroyed"
  end
end
