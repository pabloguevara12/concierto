require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { amaterno: @user.amaterno, apaterno: @user.apaterno, doc_identity: @user.doc_identity, dtype_id: @user.dtype_id, gender: @user.gender, mail1: @user.mail1, mail2: @user.mail2, name: @user.name, num_identity: @user.num_identity, string: @user.string, user_id: @user.user_id, utype_id: @user.utype_id }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { amaterno: @user.amaterno, apaterno: @user.apaterno, doc_identity: @user.doc_identity, dtype_id: @user.dtype_id, gender: @user.gender, mail1: @user.mail1, mail2: @user.mail2, name: @user.name, num_identity: @user.num_identity, string: @user.string, user_id: @user.user_id, utype_id: @user.utype_id }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
