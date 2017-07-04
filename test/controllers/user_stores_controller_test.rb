require 'test_helper'

class UserStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_store = user_stores(:one)
  end

  test "should get index" do
    get user_stores_url
    assert_response :success
  end

  test "should get new" do
    get new_user_store_url
    assert_response :success
  end

  test "should create user_store" do
    assert_difference('UserStore.count') do
      post user_stores_url, params: { user_store: {  } }
    end

    assert_redirected_to user_store_url(UserStore.last)
  end

  test "should show user_store" do
    get user_store_url(@user_store)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_store_url(@user_store)
    assert_response :success
  end

  test "should update user_store" do
    patch user_store_url(@user_store), params: { user_store: {  } }
    assert_redirected_to user_store_url(@user_store)
  end

  test "should destroy user_store" do
    assert_difference('UserStore.count', -1) do
      delete user_store_url(@user_store)
    end

    assert_redirected_to user_stores_url
  end
end
