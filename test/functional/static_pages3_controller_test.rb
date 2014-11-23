require 'test_helper'

class StaticPages3ControllerTest < ActionController::TestCase
  test "should get Overview" do
    get :Overview
    assert_response :success
  end

  test "should get History" do
    get :History
    assert_response :success
  end

end
