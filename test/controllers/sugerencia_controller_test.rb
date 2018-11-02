require 'test_helper'

class SugerenciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sugerencium = sugerencia(:one)
  end

  test "should get index" do
    get sugerencia_url
    assert_response :success
  end

  test "should get new" do
    get new_sugerencium_url
    assert_response :success
  end

  test "should create sugerencium" do
    assert_difference('Sugerencium.count') do
      post sugerencia_url, params: { sugerencium: { detalle: @sugerencium.detalle, fecha: @sugerencium.fecha, usuario_id: @sugerencium.usuario_id } }
    end

    assert_redirected_to sugerencium_url(Sugerencium.last)
  end

  test "should show sugerencium" do
    get sugerencium_url(@sugerencium)
    assert_response :success
  end

  test "should get edit" do
    get edit_sugerencium_url(@sugerencium)
    assert_response :success
  end

  test "should update sugerencium" do
    patch sugerencium_url(@sugerencium), params: { sugerencium: { detalle: @sugerencium.detalle, fecha: @sugerencium.fecha, usuario_id: @sugerencium.usuario_id } }
    assert_redirected_to sugerencium_url(@sugerencium)
  end

  test "should destroy sugerencium" do
    assert_difference('Sugerencium.count', -1) do
      delete sugerencium_url(@sugerencium)
    end

    assert_redirected_to sugerencia_url
  end
end
