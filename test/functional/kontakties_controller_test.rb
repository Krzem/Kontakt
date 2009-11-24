require 'test_helper'

class KontaktiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kontakties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kontakty" do
    assert_difference('Kontakty.count') do
      post :create, :kontakty => { }
    end

    assert_redirected_to kontakty_path(assigns(:kontakty))
  end

  test "should show kontakty" do
    get :show, :id => kontakties(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => kontakties(:one).to_param
    assert_response :success
  end

  test "should update kontakty" do
    put :update, :id => kontakties(:one).to_param, :kontakty => { }
    assert_redirected_to kontakty_path(assigns(:kontakty))
  end

  test "should destroy kontakty" do
    assert_difference('Kontakty.count', -1) do
      delete :destroy, :id => kontakties(:one).to_param
    end

    assert_redirected_to kontakties_path
  end
end
