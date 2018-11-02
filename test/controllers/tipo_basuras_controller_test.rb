require 'test_helper'

class TipoBasurasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_basura = tipo_basuras(:one)
  end

  test "should get index" do
    get tipo_basuras_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_basura_url
    assert_response :success
  end

  test "should create tipo_basura" do
    assert_difference('TipoBasura.count') do
      post tipo_basuras_url, params: { tipo_basura: { descripcion: @tipo_basura.descripcion, foto: @tipo_basura.foto, nombre: @tipo_basura.nombre } }
    end

    assert_redirected_to tipo_basura_url(TipoBasura.last)
  end

  test "should show tipo_basura" do
    get tipo_basura_url(@tipo_basura)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_basura_url(@tipo_basura)
    assert_response :success
  end

  test "should update tipo_basura" do
    patch tipo_basura_url(@tipo_basura), params: { tipo_basura: { descripcion: @tipo_basura.descripcion, foto: @tipo_basura.foto, nombre: @tipo_basura.nombre } }
    assert_redirected_to tipo_basura_url(@tipo_basura)
  end

  test "should destroy tipo_basura" do
    assert_difference('TipoBasura.count', -1) do
      delete tipo_basura_url(@tipo_basura)
    end

    assert_redirected_to tipo_basuras_url
  end
end
