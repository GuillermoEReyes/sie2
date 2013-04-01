require 'test_helper'

class LectivosControllerTest < ActionController::TestCase
  setup do
    @lectivo = lectivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lectivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lectivo" do
    assert_difference('Lectivo.count') do
      post :create, lectivo: { codigo: @lectivo.codigo, slogan: @lectivo.slogan, valor1p: @lectivo.valor1p, valor2p: @lectivo.valor2p, valor3p: @lectivo.valor3p, valor4p: @lectivo.valor4p, valor_aprobado: @lectivo.valor_aprobado }
    end

    assert_redirected_to lectivo_path(assigns(:lectivo))
  end

  test "should show lectivo" do
    get :show, id: @lectivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lectivo
    assert_response :success
  end

  test "should update lectivo" do
    put :update, id: @lectivo, lectivo: { codigo: @lectivo.codigo, slogan: @lectivo.slogan, valor1p: @lectivo.valor1p, valor2p: @lectivo.valor2p, valor3p: @lectivo.valor3p, valor4p: @lectivo.valor4p, valor_aprobado: @lectivo.valor_aprobado }
    assert_redirected_to lectivo_path(assigns(:lectivo))
  end

  test "should destroy lectivo" do
    assert_difference('Lectivo.count', -1) do
      delete :destroy, id: @lectivo
    end

    assert_redirected_to lectivos_path
  end
end
