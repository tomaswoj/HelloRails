require 'test_helper'

class ZajeciaControllerTest < ActionController::TestCase
  setup do
    @zajecium = zajecia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zajecia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zajecium" do
    assert_difference('Zajecium.count') do
      post :create, zajecium: { opis: @zajecium.opis, temat: @zajecium.temat }
    end

    assert_redirected_to zajecium_path(assigns(:zajecium))
  end

  test "should show zajecium" do
    get :show, id: @zajecium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zajecium
    assert_response :success
  end

  test "should update zajecium" do
    put :update, id: @zajecium, zajecium: { opis: @zajecium.opis, temat: @zajecium.temat }
    assert_redirected_to zajecium_path(assigns(:zajecium))
  end

  test "should destroy zajecium" do
    assert_difference('Zajecium.count', -1) do
      delete :destroy, id: @zajecium
    end

    assert_redirected_to zajecia_path
  end
end
