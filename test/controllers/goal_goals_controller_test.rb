require 'test_helper'

class GoalGoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goal_goal = goal_goals(:one)
  end

  test "should get index" do
    get goal_goals_url
    assert_response :success
  end

  test "should get new" do
    get new_goal_goal_url
    assert_response :success
  end

  test "should create goal_goal" do
    assert_difference('GoalGoal.count') do
      post goal_goals_url, params: { goal_goal: { goal_end_date: @goal_goal.goal_end_date, goal_month: @goal_goal.goal_month, goal_start_date: @goal_goal.goal_start_date, goal_value: @goal_goal.goal_value, goal_year: @goal_goal.goal_year, user: @goal_goal.user } }
    end

    assert_redirected_to goal_goal_url(GoalGoal.last)
  end

  test "should show goal_goal" do
    get goal_goal_url(@goal_goal)
    assert_response :success
  end

  test "should get edit" do
    get edit_goal_goal_url(@goal_goal)
    assert_response :success
  end

  test "should update goal_goal" do
    patch goal_goal_url(@goal_goal), params: { goal_goal: { goal_end_date: @goal_goal.goal_end_date, goal_month: @goal_goal.goal_month, goal_start_date: @goal_goal.goal_start_date, goal_value: @goal_goal.goal_value, goal_year: @goal_goal.goal_year, user: @goal_goal.user } }
    assert_redirected_to goal_goal_url(@goal_goal)
  end

  test "should destroy goal_goal" do
    assert_difference('GoalGoal.count', -1) do
      delete goal_goal_url(@goal_goal)
    end

    assert_redirected_to goal_goals_url
  end
end
