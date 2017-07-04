require 'test_helper'

class StorStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stor_store = stor_stores(:one)
  end

  test "should get index" do
    get stor_stores_url
    assert_response :success
  end

  test "should get new" do
    get new_stor_store_url
    assert_response :success
  end

  test "should create stor_store" do
    assert_difference('StorStore.count') do
      post stor_stores_url, params: { stor_store: { stor_name: @stor_store.stor_name } }
    end

    assert_redirected_to stor_store_url(StorStore.last)
  end

  test "should show stor_store" do
    get stor_store_url(@stor_store)
    assert_response :success
  end

  test "should get edit" do
    get edit_stor_store_url(@stor_store)
    assert_response :success
  end

  test "should update stor_store" do
    patch stor_store_url(@stor_store), params: { stor_store: { stor_name: @stor_store.stor_name } }
    assert_redirected_to stor_store_url(@stor_store)
  end

  test "should destroy stor_store" do
    assert_difference('StorStore.count', -1) do
      delete stor_store_url(@stor_store)
    end

    assert_redirected_to stor_stores_url
  end
end
