require 'test_helper'

class ColocsControllerTest < ActionController::TestCase
  setup do
    @coloc = colocs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:colocs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coloc" do
    assert_difference('Coloc.count') do
      post :create, coloc: { adress: @coloc.adress }
    end

    assert_redirected_to coloc_path(assigns(:coloc))
  end

  test "should show coloc" do
    get :show, id: @coloc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coloc
    assert_response :success
  end

  test "should update coloc" do
    patch :update, id: @coloc, coloc: { adress: @coloc.adress }
    assert_redirected_to coloc_path(assigns(:coloc))
  end

  test "should destroy coloc" do
    assert_difference('Coloc.count', -1) do
      delete :destroy, id: @coloc
    end

    assert_redirected_to colocs_path
  end
end
