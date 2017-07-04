require 'test_helper'

class UstoUserStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usto_user_store = usto_user_stores(:one)
  end

  test "should get index" do
    get usto_user_stores_url
    assert_response :success
  end

  test "should get new" do
    get new_usto_user_store_url
    assert_response :success
  end

  test "should create usto_user_store" do
    assert_difference('UstoUserStore.count') do
      post usto_user_stores_url, params: { usto_user_store: { usto_id: @usto_user_store.usto_id, usto_stor_id: @usto_user_store.usto_stor_id, usto_user_id: @usto_user_store.usto_user_id } }
    end

    assert_redirected_to usto_user_store_url(UstoUserStore.last)
  end

  test "should show usto_user_store" do
    get usto_user_store_url(@usto_user_store)
    assert_response :success
  end

  test "should get edit" do
    get edit_usto_user_store_url(@usto_user_store)
    assert_response :success
  end

  test "should update usto_user_store" do
    patch usto_user_store_url(@usto_user_store), params: { usto_user_store: { usto_id: @usto_user_store.usto_id, usto_stor_id: @usto_user_store.usto_stor_id, usto_user_id: @usto_user_store.usto_user_id } }
    assert_redirected_to usto_user_store_url(@usto_user_store)
  end

  test "should destroy usto_user_store" do
    assert_difference('UstoUserStore.count', -1) do
      delete usto_user_store_url(@usto_user_store)
    end

    assert_redirected_to usto_user_stores_url
  end
end
