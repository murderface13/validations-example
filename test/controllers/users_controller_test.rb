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
      post :create, user: { city: @user.city, city_citizens: @user.city_citizens, country: @user.country, first_name: @user.first_name, galaxy: @user.galaxy, house: @user.house, last_name: @user.last_name, planet: @user.planet, planet_no: @user.planet_no, street: @user.street }
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
    patch :update, id: @user, user: { city: @user.city, city_citizens: @user.city_citizens, country: @user.country, first_name: @user.first_name, galaxy: @user.galaxy, house: @user.house, last_name: @user.last_name, planet: @user.planet, planet_no: @user.planet_no, street: @user.street }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
