require 'test_helper'

class AlumnosControllerTest < ActionController::TestCase
  setup do
    @alumno = alumnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alumnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alumno" do
    assert_difference('Alumno.count') do
      post :create, alumno: { EscuelaProviene: @alumno.EscuelaProviene, IdFamilia: @alumno.IdFamilia, apellido1: @alumno.apellido1, apellido2: @alumno.apellido2, avenida: @alumno.avenida, calle: @alumno.calle, casa: @alumno.casa, colonia: @alumno.colonia, departamento: @alumno.departamento, esBecado: @alumno.esBecado, esHijoMaestro: @alumno.esHijoMaestro, esRepitente: @alumno.esRepitente, fechaNacimiento: @alumno.fechaNacimiento, genero: @alumno.genero, lugarNacimiento: @alumno.lugarNacimiento, mano: @alumno.mano, municipio: @alumno.municipio, nacionalidad: @alumno.nacionalidad, nombres: @alumno.nombres, pais: @alumno.pais, religion: @alumno.religion, retirado: @alumno.retirado, rne: @alumno.rne }
    end

    assert_redirected_to alumno_path(assigns(:alumno))
  end

  test "should show alumno" do
    get :show, id: @alumno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alumno
    assert_response :success
  end

  test "should update alumno" do
    put :update, id: @alumno, alumno: { EscuelaProviene: @alumno.EscuelaProviene, IdFamilia: @alumno.IdFamilia, apellido1: @alumno.apellido1, apellido2: @alumno.apellido2, avenida: @alumno.avenida, calle: @alumno.calle, casa: @alumno.casa, colonia: @alumno.colonia, departamento: @alumno.departamento, esBecado: @alumno.esBecado, esHijoMaestro: @alumno.esHijoMaestro, esRepitente: @alumno.esRepitente, fechaNacimiento: @alumno.fechaNacimiento, genero: @alumno.genero, lugarNacimiento: @alumno.lugarNacimiento, mano: @alumno.mano, municipio: @alumno.municipio, nacionalidad: @alumno.nacionalidad, nombres: @alumno.nombres, pais: @alumno.pais, religion: @alumno.religion, retirado: @alumno.retirado, rne: @alumno.rne }
    assert_redirected_to alumno_path(assigns(:alumno))
  end

  test "should destroy alumno" do
    assert_difference('Alumno.count', -1) do
      delete :destroy, id: @alumno
    end

    assert_redirected_to alumnos_path
  end
end
