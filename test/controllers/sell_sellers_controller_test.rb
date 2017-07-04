require 'test_helper'

class SellSellersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sell_seller = sell_sellers(:one)
  end

  test "should get index" do
    get sell_sellers_url
    assert_response :success
  end

  test "should get new" do
    get new_sell_seller_url
    assert_response :success
  end

  test "should create sell_seller" do
    assert_difference('SellSeller.count') do
      post sell_sellers_url, params: { sell_seller: { sell_name: @sell_seller.sell_name } }
    end

    assert_redirected_to sell_seller_url(SellSeller.last)
  end

  test "should show sell_seller" do
    get sell_seller_url(@sell_seller)
    assert_response :success
  end

  test "should get edit" do
    get edit_sell_seller_url(@sell_seller)
    assert_response :success
  end

  test "should update sell_seller" do
    patch sell_seller_url(@sell_seller), params: { sell_seller: { sell_name: @sell_seller.sell_name } }
    assert_redirected_to sell_seller_url(@sell_seller)
  end

  test "should destroy sell_seller" do
    assert_difference('SellSeller.count', -1) do
      delete sell_seller_url(@sell_seller)
    end

    assert_redirected_to sell_sellers_url
  end
end
