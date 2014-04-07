require 'test_helper'

class MbasControllerTest < ActionController::TestCase
  setup do
    @mba = mbas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mbas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mba" do
    assert_difference('Mba.count') do
      post :create, mba: { name: @mba.name, school: @mba.school }
    end

    assert_redirected_to mba_path(assigns(:mba))
  end

  test "should show mba" do
    get :show, id: @mba
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mba
    assert_response :success
  end

  test "should update mba" do
    patch :update, id: @mba, mba: { name: @mba.name, school: @mba.school }
    assert_redirected_to mba_path(assigns(:mba))
  end

  test "should destroy mba" do
    assert_difference('Mba.count', -1) do
      delete :destroy, id: @mba
    end

    assert_redirected_to mbas_path
  end
end
