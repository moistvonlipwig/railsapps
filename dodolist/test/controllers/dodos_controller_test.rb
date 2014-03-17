require 'test_helper'

class DodosControllerTest < ActionController::TestCase
  setup do
    @dodo = dodos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dodos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dodo" do
    assert_difference('Dodo.count') do
      post :create, dodo: { name: @dodo.name }
    end

    assert_redirected_to dodo_path(assigns(:dodo))
  end

  test "should show dodo" do
    get :show, id: @dodo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dodo
    assert_response :success
  end

  test "should update dodo" do
    patch :update, id: @dodo, dodo: { name: @dodo.name }
    assert_redirected_to dodo_path(assigns(:dodo))
  end

  test "should destroy dodo" do
    assert_difference('Dodo.count', -1) do
      delete :destroy, id: @dodo
    end

    assert_redirected_to dodos_path
  end
end
