require 'test_helper'

class SgoaStoreGoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sgoa_store_goal = sgoa_store_goals(:one)
  end

  test "should get index" do
    get sgoa_store_goals_url
    assert_response :success
  end

  test "should get new" do
    get new_sgoa_store_goal_url
    assert_response :success
  end

  test "should create sgoa_store_goal" do
    assert_difference('SgoaStoreGoal.count') do
      post sgoa_store_goals_url, params: { sgoa_store_goal: { sgoa_goal_id: @sgoa_store_goal.sgoa_goal_id, sgoa_id: @sgoa_store_goal.sgoa_id, sgoa_stor_id: @sgoa_store_goal.sgoa_stor_id } }
    end

    assert_redirected_to sgoa_store_goal_url(SgoaStoreGoal.last)
  end

  test "should show sgoa_store_goal" do
    get sgoa_store_goal_url(@sgoa_store_goal)
    assert_response :success
  end

  test "should get edit" do
    get edit_sgoa_store_goal_url(@sgoa_store_goal)
    assert_response :success
  end

  test "should update sgoa_store_goal" do
    patch sgoa_store_goal_url(@sgoa_store_goal), params: { sgoa_store_goal: { sgoa_goal_id: @sgoa_store_goal.sgoa_goal_id, sgoa_id: @sgoa_store_goal.sgoa_id, sgoa_stor_id: @sgoa_store_goal.sgoa_stor_id } }
    assert_redirected_to sgoa_store_goal_url(@sgoa_store_goal)
  end

  test "should destroy sgoa_store_goal" do
    assert_difference('SgoaStoreGoal.count', -1) do
      delete sgoa_store_goal_url(@sgoa_store_goal)
    end

    assert_redirected_to sgoa_store_goals_url
  end
end
