require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get guest" do
    get :guest
    assert_response :success
  end

  test "should get member" do
    get :member
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get community" do
    get :community
    assert_response :success
  end

  test "should get news" do
    get :news
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

end
