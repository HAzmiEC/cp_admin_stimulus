require "test_helper"

class Cp::BrandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cp_brand = cp_brands(:one)
  end

  test "should get index" do
    get cp_brands_url
    assert_response :success
  end

  test "should get new" do
    get new_cp_brand_url
    assert_response :success
  end

  test "should create cp_brand" do
    assert_difference("Cp::Brand.count") do
      post cp_brands_url, params: { cp_brand: {  } }
    end

    assert_redirected_to cp_brand_url(Cp::Brand.last)
  end

  test "should show cp_brand" do
    get cp_brand_url(@cp_brand)
    assert_response :success
  end

  test "should get edit" do
    get edit_cp_brand_url(@cp_brand)
    assert_response :success
  end

  test "should update cp_brand" do
    patch cp_brand_url(@cp_brand), params: { cp_brand: {  } }
    assert_redirected_to cp_brand_url(@cp_brand)
  end

  test "should destroy cp_brand" do
    assert_difference("Cp::Brand.count", -1) do
      delete cp_brand_url(@cp_brand)
    end

    assert_redirected_to cp_brands_url
  end
end
