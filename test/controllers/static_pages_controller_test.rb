require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get subscribe" do
    get :subscribe
    assert_response :success
  end

  test "should get sponsor" do
    get :sponsor
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
