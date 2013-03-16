require 'test_helper'

class MicroplstsControllerTest < ActionController::TestCase
  setup do
    @microplst = microplsts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microplsts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microplst" do
    assert_difference('Microplst.count') do
      post :create, microplst: { content: @microplst.content, user_id: @microplst.user_id }
    end

    assert_redirected_to microplst_path(assigns(:microplst))
  end

  test "should show microplst" do
    get :show, id: @microplst
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microplst
    assert_response :success
  end

  test "should update microplst" do
    put :update, id: @microplst, microplst: { content: @microplst.content, user_id: @microplst.user_id }
    assert_redirected_to microplst_path(assigns(:microplst))
  end

  test "should destroy microplst" do
    assert_difference('Microplst.count', -1) do
      delete :destroy, id: @microplst
    end

    assert_redirected_to microplsts_path
  end
end
