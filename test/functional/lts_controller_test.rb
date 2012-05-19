require 'test_helper'

class LtsControllerTest < ActionController::TestCase
  setup do
    @lt = lts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lt" do
    assert_difference('Lt.count') do
      post :create, lt: { like_count: @lt.like_count }
    end

    assert_redirected_to lt_path(assigns(:lt))
  end

  test "should show lt" do
    get :show, id: @lt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lt
    assert_response :success
  end

  test "should update lt" do
    put :update, id: @lt, lt: { like_count: @lt.like_count }
    assert_redirected_to lt_path(assigns(:lt))
  end

  test "should destroy lt" do
    assert_difference('Lt.count', -1) do
      delete :destroy, id: @lt
    end

    assert_redirected_to lts_path
  end
end
