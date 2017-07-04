require 'test_helper'

class SellerGoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seller_goal = seller_goals(:one)
  end

  test "should get index" do
    get seller_goals_url
    assert_response :success
  end

  test "should get new" do
    get new_seller_goal_url
    assert_response :success
  end

  test "should create seller_goal" do
    assert_difference('SellerGoal.count') do
      post seller_goals_url, params: { seller_goal: {  } }
    end

    assert_redirected_to seller_goal_url(SellerGoal.last)
  end

  test "should show seller_goal" do
    get seller_goal_url(@seller_goal)
    assert_response :success
  end

  test "should get edit" do
    get edit_seller_goal_url(@seller_goal)
    assert_response :success
  end

  test "should update seller_goal" do
    patch seller_goal_url(@seller_goal), params: { seller_goal: {  } }
    assert_redirected_to seller_goal_url(@seller_goal)
  end

  test "should destroy seller_goal" do
    assert_difference('SellerGoal.count', -1) do
      delete seller_goal_url(@seller_goal)
    end

    assert_redirected_to seller_goals_url
  end
end
