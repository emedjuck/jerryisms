require 'test_helper'

class JerryismsControllerTest < ActionController::TestCase
  setup do
    @jerryism = jerryisms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jerryisms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jerryism" do
    assert_difference('Jerryism.count') do
      post :create, jerryism: { created_by: @jerryism.created_by, text: @jerryism.text }
    end

    assert_redirected_to jerryism_path(assigns(:jerryism))
  end

  test "should show jerryism" do
    get :show, id: @jerryism
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jerryism
    assert_response :success
  end

  test "should update jerryism" do
    patch :update, id: @jerryism, jerryism: { created_by: @jerryism.created_by, text: @jerryism.text }
    assert_redirected_to jerryism_path(assigns(:jerryism))
  end

  test "should destroy jerryism" do
    assert_difference('Jerryism.count', -1) do
      delete :destroy, id: @jerryism
    end

    assert_redirected_to jerryisms_path
  end
end
