require 'test_helper'

class CasosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caso = casos(:one)
  end

  test "should get index" do
    get casos_url
    assert_response :success
  end

  test "should get new" do
    get new_caso_url
    assert_response :success
  end

  test "should create caso" do
    assert_difference('Caso.count') do
      post casos_url, params: { caso: { barrio_id: @caso.barrio_id, detalle: @caso.detalle, estado_id: @caso.estado_id, fecha: @caso.fecha, foto: @caso.foto, tipo_basura: @caso.tipo_basura, usuario_id: @caso.usuario_id } }
    end

    assert_redirected_to caso_url(Caso.last)
  end

  test "should show caso" do
    get caso_url(@caso)
    assert_response :success
  end

  test "should get edit" do
    get edit_caso_url(@caso)
    assert_response :success
  end

  test "should update caso" do
    patch caso_url(@caso), params: { caso: { barrio_id: @caso.barrio_id, detalle: @caso.detalle, estado_id: @caso.estado_id, fecha: @caso.fecha, foto: @caso.foto, tipo_basura: @caso.tipo_basura, usuario_id: @caso.usuario_id } }
    assert_redirected_to caso_url(@caso)
  end

  test "should destroy caso" do
    assert_difference('Caso.count', -1) do
      delete caso_url(@caso)
    end

    assert_redirected_to casos_url
  end
end
