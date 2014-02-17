require 'test_helper'

class CorretorasControllerTest < ActionController::TestCase
  setup do
    @corretora = corretoras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:corretoras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create corretora" do
    assert_difference('Corretora.count') do
      post :create, corretora: { ativo: @corretora.ativo, corretora: @corretora.corretora }
    end

    assert_redirected_to corretora_path(assigns(:corretora))
  end

  test "should show corretora" do
    get :show, id: @corretora
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @corretora
    assert_response :success
  end

  test "should update corretora" do
    patch :update, id: @corretora, corretora: { ativo: @corretora.ativo, corretora: @corretora.corretora }
    assert_redirected_to corretora_path(assigns(:corretora))
  end

  test "should destroy corretora" do
    assert_difference('Corretora.count', -1) do
      delete :destroy, id: @corretora
    end

    assert_redirected_to corretoras_path
  end
end
