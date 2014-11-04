require 'test_helper'

class ZadaniaControllerTest < ActionController::TestCase
  setup do
    @zadanium = zadania(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zadania)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zadanium" do
    assert_difference('Zadanium.count') do
      post :create, zadanium: { opis: @zadanium.opis, tytul: @zadanium.tytul, zajecium_id: @zadanium.zajecium_id }
    end

    assert_redirected_to zadanium_path(assigns(:zadanium))
  end

  test "should show zadanium" do
    get :show, id: @zadanium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zadanium
    assert_response :success
  end

  test "should update zadanium" do
    put :update, id: @zadanium, zadanium: { opis: @zadanium.opis, tytul: @zadanium.tytul, zajecium_id: @zadanium.zajecium_id }
    assert_redirected_to zadanium_path(assigns(:zadanium))
  end

  test "should destroy zadanium" do
    assert_difference('Zadanium.count', -1) do
      delete :destroy, id: @zadanium
    end

    assert_redirected_to zadania_path
  end
end
