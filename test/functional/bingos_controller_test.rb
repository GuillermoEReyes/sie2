require 'test_helper'

class BingosControllerTest < ActionController::TestCase
  setup do
    @bingo = bingos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bingos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bingo" do
    assert_difference('Bingo.count') do
      post :create, bingo: { fechapago: @bingo.fechapago, lectivo: @bingo.lectivo, montopago: @bingo.montopago, posteadopor: @bingo.posteadopor, recibo: @bingo.recibo, rne: @bingo.rne }
    end

    assert_redirected_to bingo_path(assigns(:bingo))
  end

  test "should show bingo" do
    get :show, id: @bingo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bingo
    assert_response :success
  end

  test "should update bingo" do
    put :update, id: @bingo, bingo: { fechapago: @bingo.fechapago, lectivo: @bingo.lectivo, montopago: @bingo.montopago, posteadopor: @bingo.posteadopor, recibo: @bingo.recibo, rne: @bingo.rne }
    assert_redirected_to bingo_path(assigns(:bingo))
  end

  test "should destroy bingo" do
    assert_difference('Bingo.count', -1) do
      delete :destroy, id: @bingo
    end

    assert_redirected_to bingos_path
  end
end
