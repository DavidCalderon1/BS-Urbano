require 'test_helper'

class RutasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ruta = rutas(:one)
  end

  test "should get index" do
    get rutas_index_url
    assert_response :success
  end

  test "should get new" do
    get new_ruta_url
    assert_response :success
  end

  test "should create ruta" do
    assert_difference('Rutas.count') do
      post rutas_index_url, params: { ruta: {  } }
    end

    assert_redirected_to ruta_url(Rutas.last)
  end

  test "should show ruta" do
    get ruta_url(@ruta)
    assert_response :success
  end

  test "should get edit" do
    get edit_ruta_url(@ruta)
    assert_response :success
  end

  test "should update ruta" do
    patch ruta_url(@ruta), params: { ruta: {  } }
    assert_redirected_to ruta_url(@ruta)
  end

  test "should destroy ruta" do
    assert_difference('Rutas.count', -1) do
      delete ruta_url(@ruta)
    end

    assert_redirected_to rutas_index_url
  end
end
