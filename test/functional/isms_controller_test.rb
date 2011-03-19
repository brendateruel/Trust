require 'test_helper'

class IsmsControllerTest < ActionController::TestCase
  setup do
    @ism = isms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:isms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ism" do
    assert_difference('Ism.count') do
      post :create, :ism => @ism.attributes
    end

    assert_redirected_to ism_path(assigns(:ism))
  end

  test "should show ism" do
    get :show, :id => @ism.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ism.to_param
    assert_response :success
  end

  test "should update ism" do
    put :update, :id => @ism.to_param, :ism => @ism.attributes
    assert_redirected_to ism_path(assigns(:ism))
  end

  test "should destroy ism" do
    assert_difference('Ism.count', -1) do
      delete :destroy, :id => @ism.to_param
    end

    assert_redirected_to isms_path
  end
end
