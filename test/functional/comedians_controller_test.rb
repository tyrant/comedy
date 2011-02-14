require 'test_helper'

class ComediansControllerTest < ActionController::TestCase
  setup do
    @comedian = comedians(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comedians)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comedian" do
    assert_difference('Comedian.count') do
      post :create, :comedian => @comedian.attributes
    end

    assert_redirected_to comedian_path(assigns(:comedian))
  end

  test "should show comedian" do
    get :show, :id => @comedian.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @comedian.to_param
    assert_response :success
  end

  test "should update comedian" do
    put :update, :id => @comedian.to_param, :comedian => @comedian.attributes
    assert_redirected_to comedian_path(assigns(:comedian))
  end

  test "should destroy comedian" do
    assert_difference('Comedian.count', -1) do
      delete :destroy, :id => @comedian.to_param
    end

    assert_redirected_to comedians_path
  end
end
