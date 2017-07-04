require 'test_helper'

class SgdaSellerGoalDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sgda_seller_goal_day = sgda_seller_goal_days(:one)
  end

  test "should get index" do
    get sgda_seller_goal_days_url
    assert_response :success
  end

  test "should get new" do
    get new_sgda_seller_goal_day_url
    assert_response :success
  end

  test "should create sgda_seller_goal_day" do
    assert_difference('SgdaSellerGoalDay.count') do
      post sgda_seller_goal_days_url, params: { sgda_seller_goal_day: { sgda_gday_id: @sgda_seller_goal_day.sgda_gday_id, sgda_id: @sgda_seller_goal_day.sgda_id, sgda_sell_id: @sgda_seller_goal_day.sgda_sell_id, sgda_value: @sgda_seller_goal_day.sgda_value } }
    end

    assert_redirected_to sgda_seller_goal_day_url(SgdaSellerGoalDay.last)
  end

  test "should show sgda_seller_goal_day" do
    get sgda_seller_goal_day_url(@sgda_seller_goal_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_sgda_seller_goal_day_url(@sgda_seller_goal_day)
    assert_response :success
  end

  test "should update sgda_seller_goal_day" do
    patch sgda_seller_goal_day_url(@sgda_seller_goal_day), params: { sgda_seller_goal_day: { sgda_gday_id: @sgda_seller_goal_day.sgda_gday_id, sgda_id: @sgda_seller_goal_day.sgda_id, sgda_sell_id: @sgda_seller_goal_day.sgda_sell_id, sgda_value: @sgda_seller_goal_day.sgda_value } }
    assert_redirected_to sgda_seller_goal_day_url(@sgda_seller_goal_day)
  end

  test "should destroy sgda_seller_goal_day" do
    assert_difference('SgdaSellerGoalDay.count', -1) do
      delete sgda_seller_goal_day_url(@sgda_seller_goal_day)
    end

    assert_redirected_to sgda_seller_goal_days_url
  end
end
