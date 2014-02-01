require 'test_helper'

class SmartUsersControllerTest < ActionController::TestCase
  setup do
    @smart_user = smart_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smart_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smart_user" do
    assert_difference('SmartUser.count') do
      post :create, smart_user: { name: @smart_user.name, pass: @smart_user.pass, user_type_id: @smart_user.user_type_id }
    end

    assert_redirected_to smart_user_path(assigns(:smart_user))
  end

  test "should show smart_user" do
    get :show, id: @smart_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @smart_user
    assert_response :success
  end

  test "should update smart_user" do
    patch :update, id: @smart_user, smart_user: { name: @smart_user.name, pass: @smart_user.pass, user_type_id: @smart_user.user_type_id }
    assert_redirected_to smart_user_path(assigns(:smart_user))
  end

  test "should destroy smart_user" do
    assert_difference('SmartUser.count', -1) do
      delete :destroy, id: @smart_user
    end

    assert_redirected_to smart_users_path
  end
end
