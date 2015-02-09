require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should login" do
    lood800 = users(:one)
    post :create, name: lood800.name, password: 'koos'
    assert_redirected_to admin_url
    assert_equal lood800.id session[:user_id]
  end

  test "should fail login" do
    lood800 = users(:one)
    post :create, name: lood800.name, password: 'wrong'
    assert_redirected_to login_url
  end

  test "should logout" do
    delete :destroy
    assert_redirected_to store_url
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end


end
