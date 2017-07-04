require 'test_helper'

class GdayGoalDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gday_goal_day = gday_goal_days(:one)
  end

  test "should get index" do
    get gday_goal_days_url
    assert_response :success
  end

  test "should get new" do
    get new_gday_goal_day_url
    assert_response :success
  end

  test "should create gday_goal_day" do
    assert_difference('GdayGoalDay.count') do
      post gday_goal_days_url, params: { gday_goal_day: { gday_date: @gday_goal_day.gday_date, gday_day: @gday_goal_day.gday_day, gday_goal_id: @gday_goal_day.gday_goal_id, gday_id: @gday_goal_day.gday_id, gday_value: @gday_goal_day.gday_value } }
    end

    assert_redirected_to gday_goal_day_url(GdayGoalDay.last)
  end

  test "should show gday_goal_day" do
    get gday_goal_day_url(@gday_goal_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_gday_goal_day_url(@gday_goal_day)
    assert_response :success
  end

  test "should update gday_goal_day" do
    patch gday_goal_day_url(@gday_goal_day), params: { gday_goal_day: { gday_date: @gday_goal_day.gday_date, gday_day: @gday_goal_day.gday_day, gday_goal_id: @gday_goal_day.gday_goal_id, gday_id: @gday_goal_day.gday_id, gday_value: @gday_goal_day.gday_value } }
    assert_redirected_to gday_goal_day_url(@gday_goal_day)
  end

  test "should destroy gday_goal_day" do
    assert_difference('GdayGoalDay.count', -1) do
      delete gday_goal_day_url(@gday_goal_day)
    end

    assert_redirected_to gday_goal_days_url
  end
end
