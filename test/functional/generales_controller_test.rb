require 'test_helper'

class GeneralesControllerTest < ActionController::TestCase
  setup do
    @general = generales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:generales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create general" do
    assert_difference('General.count') do
      post :create, general: { bimestreActual: @general.bimestreActual, boletaImpresa: @general.boletaImpresa, cobrazaOcci: @general.cobrazaOcci, idsistema: @general.idsistema, lectivoActual: @general.lectivoActual, noPlanOcci: @general.noPlanOcci, nombreArchivoOcci: @general.nombreArchivoOcci, notasweb: @general.notasweb, tieneBingo: @general.tieneBingo, tienePapeleria: @general.tienePapeleria }
    end

    assert_redirected_to general_path(assigns(:general))
  end

  test "should show general" do
    get :show, id: @general
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @general
    assert_response :success
  end

  test "should update general" do
    put :update, id: @general, general: { bimestreActual: @general.bimestreActual, boletaImpresa: @general.boletaImpresa, cobrazaOcci: @general.cobrazaOcci, idsistema: @general.idsistema, lectivoActual: @general.lectivoActual, noPlanOcci: @general.noPlanOcci, nombreArchivoOcci: @general.nombreArchivoOcci, notasweb: @general.notasweb, tieneBingo: @general.tieneBingo, tienePapeleria: @general.tienePapeleria }
    assert_redirected_to general_path(assigns(:general))
  end

  test "should destroy general" do
    assert_difference('General.count', -1) do
      delete :destroy, id: @general
    end

    assert_redirected_to generales_path
  end
end
