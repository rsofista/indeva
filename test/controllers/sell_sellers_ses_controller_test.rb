require 'test_helper'

class SellSellersSesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sell_sellers_se = sell_sellers_ses(:one)
  end

  test "should get index" do
    get sell_sellers_ses_url
    assert_response :success
  end

  test "should get new" do
    get new_sell_sellers_se_url
    assert_response :success
  end

  test "should create sell_sellers_se" do
    assert_difference('SellSellersSe.count') do
      post sell_sellers_ses_url, params: { sell_sellers_se: { sell_name: @sell_sellers_se.sell_name } }
    end

    assert_redirected_to sell_sellers_se_url(SellSellersSe.last)
  end

  test "should show sell_sellers_se" do
    get sell_sellers_se_url(@sell_sellers_se)
    assert_response :success
  end

  test "should get edit" do
    get edit_sell_sellers_se_url(@sell_sellers_se)
    assert_response :success
  end

  test "should update sell_sellers_se" do
    patch sell_sellers_se_url(@sell_sellers_se), params: { sell_sellers_se: { sell_name: @sell_sellers_se.sell_name } }
    assert_redirected_to sell_sellers_se_url(@sell_sellers_se)
  end

  test "should destroy sell_sellers_se" do
    assert_difference('SellSellersSe.count', -1) do
      delete sell_sellers_se_url(@sell_sellers_se)
    end

    assert_redirected_to sell_sellers_ses_url
  end
end
