require 'test_helper'

class GoconcertsControllerTest < ActionController::TestCase
  setup do
    @goconcert = goconcerts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goconcerts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goconcert" do
    assert_difference('Goconcert.count') do
      post :create, goconcert: { data: @goconcert.data }
    end

    assert_redirected_to goconcert_path(assigns(:goconcert))
  end

  test "should show goconcert" do
    get :show, id: @goconcert
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goconcert
    assert_response :success
  end

  test "should update goconcert" do
    put :update, id: @goconcert, goconcert: { data: @goconcert.data }
    assert_redirected_to goconcert_path(assigns(:goconcert))
  end

  test "should destroy goconcert" do
    assert_difference('Goconcert.count', -1) do
      delete :destroy, id: @goconcert
    end

    assert_redirected_to goconcerts_path
  end
end
