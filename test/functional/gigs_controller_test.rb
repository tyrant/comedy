require 'test_helper'

class GigsControllerTest < ActionController::TestCase
  setup do
    @gig = gigs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gigs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gig" do
    assert_difference('Gig.count') do
      post :create, :gig => @gig.attributes
    end

    assert_redirected_to gig_path(assigns(:gig))
  end

  test "should show gig" do
    get :show, :id => @gig.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @gig.to_param
    assert_response :success
  end

  test "should update gig" do
    put :update, :id => @gig.to_param, :gig => @gig.attributes
    assert_redirected_to gig_path(assigns(:gig))
  end

  test "should destroy gig" do
    assert_difference('Gig.count', -1) do
      delete :destroy, :id => @gig.to_param
    end

    assert_redirected_to gigs_path
  end
end
