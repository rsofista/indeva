require 'test_helper'

class StoreSellersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_seller = store_sellers(:one)
  end

  test "should get index" do
    get store_sellers_url
    assert_response :success
  end

  test "should get new" do
    get new_store_seller_url
    assert_response :success
  end

  test "should create store_seller" do
    assert_difference('StoreSeller.count') do
      post store_sellers_url, params: { store_seller: {  } }
    end

    assert_redirected_to store_seller_url(StoreSeller.last)
  end

  test "should show store_seller" do
    get store_seller_url(@store_seller)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_seller_url(@store_seller)
    assert_response :success
  end

  test "should update store_seller" do
    patch store_seller_url(@store_seller), params: { store_seller: {  } }
    assert_redirected_to store_seller_url(@store_seller)
  end

  test "should destroy store_seller" do
    assert_difference('StoreSeller.count', -1) do
      delete store_seller_url(@store_seller)
    end

    assert_redirected_to store_sellers_url
  end
end
