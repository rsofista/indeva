require 'test_helper'

class GoalDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goal_day = goal_days(:one)
  end

  test "should get index" do
    get goal_days_url
    assert_response :success
  end

  test "should get new" do
    get new_goal_day_url
    assert_response :success
  end

  test "should create goal_day" do
    assert_difference('GoalDay.count') do
      post goal_days_url, params: { goal_day: {  } }
    end

    assert_redirected_to goal_day_url(GoalDay.last)
  end

  test "should show goal_day" do
    get goal_day_url(@goal_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_goal_day_url(@goal_day)
    assert_response :success
  end

  test "should update goal_day" do
    patch goal_day_url(@goal_day), params: { goal_day: {  } }
    assert_redirected_to goal_day_url(@goal_day)
  end

  test "should destroy goal_day" do
    assert_difference('GoalDay.count', -1) do
      delete goal_day_url(@goal_day)
    end

    assert_redirected_to goal_days_url
  end
end
