require 'test_helper'

class SearchListsControllerTest < ActionController::TestCase
  setup do
    @search_list = search_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:search_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create search_list" do
    assert_difference('SearchList.count') do
      post :create, search_list: @search_list.attributes
    end

    assert_redirected_to search_list_path(assigns(:search_list))
  end

  test "should show search_list" do
    get :show, id: @search_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @search_list
    assert_response :success
  end

  test "should update search_list" do
    put :update, id: @search_list, search_list: @search_list.attributes
    assert_redirected_to search_list_path(assigns(:search_list))
  end

  test "should destroy search_list" do
    assert_difference('SearchList.count', -1) do
      delete :destroy, id: @search_list
    end

    assert_redirected_to search_lists_path
  end
end
