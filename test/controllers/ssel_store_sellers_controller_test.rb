require 'test_helper'

class SselStoreSellersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ssel_store_seller = ssel_store_sellers(:one)
  end

  test "should get index" do
    get ssel_store_sellers_url
    assert_response :success
  end

  test "should get new" do
    get new_ssel_store_seller_url
    assert_response :success
  end

  test "should create ssel_store_seller" do
    assert_difference('SselStoreSeller.count') do
      post ssel_store_sellers_url, params: { ssel_store_seller: { ssel_id: @ssel_store_seller.ssel_id, ssel_sell_id: @ssel_store_seller.ssel_sell_id, ssel_stor_id: @ssel_store_seller.ssel_stor_id } }
    end

    assert_redirected_to ssel_store_seller_url(SselStoreSeller.last)
  end

  test "should show ssel_store_seller" do
    get ssel_store_seller_url(@ssel_store_seller)
    assert_response :success
  end

  test "should get edit" do
    get edit_ssel_store_seller_url(@ssel_store_seller)
    assert_response :success
  end

  test "should update ssel_store_seller" do
    patch ssel_store_seller_url(@ssel_store_seller), params: { ssel_store_seller: { ssel_id: @ssel_store_seller.ssel_id, ssel_sell_id: @ssel_store_seller.ssel_sell_id, ssel_stor_id: @ssel_store_seller.ssel_stor_id } }
    assert_redirected_to ssel_store_seller_url(@ssel_store_seller)
  end

  test "should destroy ssel_store_seller" do
    assert_difference('SselStoreSeller.count', -1) do
      delete ssel_store_seller_url(@ssel_store_seller)
    end

    assert_redirected_to ssel_store_sellers_url
  end
end
