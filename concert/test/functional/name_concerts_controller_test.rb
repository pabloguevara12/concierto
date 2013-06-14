require 'test_helper'

class NameConcertsControllerTest < ActionController::TestCase
  setup do
    @name_concert = name_concerts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:name_concerts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create name_concert" do
    assert_difference('NameConcert.count') do
      post :create, name_concert: { end_date: @name_concert.end_date, name: @name_concert.name, start_date: @name_concert.start_date }
    end

    assert_redirected_to name_concert_path(assigns(:name_concert))
  end

  test "should show name_concert" do
    get :show, id: @name_concert
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @name_concert
    assert_response :success
  end

  test "should update name_concert" do
    put :update, id: @name_concert, name_concert: { end_date: @name_concert.end_date, name: @name_concert.name, start_date: @name_concert.start_date }
    assert_redirected_to name_concert_path(assigns(:name_concert))
  end

  test "should destroy name_concert" do
    assert_difference('NameConcert.count', -1) do
      delete :destroy, id: @name_concert
    end

    assert_redirected_to name_concerts_path
  end
end
