require 'test_helper'

class LadingsControllerTest < ActionController::TestCase
  setup do
    @lading = ladings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ladings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lading" do
    assert_difference('Lading.count') do
      post :create, lading: {  }
    end

    assert_redirected_to lading_path(assigns(:lading))
  end

  test "should show lading" do
    get :show, id: @lading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lading
    assert_response :success
  end

  test "should update lading" do
    patch :update, id: @lading, lading: {  }
    assert_redirected_to lading_path(assigns(:lading))
  end

  test "should destroy lading" do
    assert_difference('Lading.count', -1) do
      delete :destroy, id: @lading
    end

    assert_redirected_to ladings_path
  end
end
