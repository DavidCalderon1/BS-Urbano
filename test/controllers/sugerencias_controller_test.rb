require 'test_helper'

class SugerenciasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sugerencia = sugerencias(:one)
  end

  test "should get index" do
    get sugerencias_index_url
    assert_response :success
  end

  test "should get new" do
    get new_sugerencia_url
    assert_response :success
  end

  test "should create sugerencia" do
    assert_difference('Sugerencias.count') do
      post sugerencias_index_url, params: { sugerencia: {  } }
    end

    assert_redirected_to sugerencia_url(Sugerencias.last)
  end

  test "should show sugerencia" do
    get sugerencia_url(@sugerencia)
    assert_response :success
  end

  test "should get edit" do
    get edit_sugerencia_url(@sugerencia)
    assert_response :success
  end

  test "should update sugerencia" do
    patch sugerencia_url(@sugerencia), params: { sugerencia: {  } }
    assert_redirected_to sugerencia_url(@sugerencia)
  end

  test "should destroy sugerencia" do
    assert_difference('Sugerencias.count', -1) do
      delete sugerencia_url(@sugerencia)
    end

    assert_redirected_to sugerencias_index_url
  end
end
