require 'test_helper'

class OperadoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operadore = operadores(:one)
  end

  test "should get index" do
    get operadores_url
    assert_response :success
  end

  test "should get new" do
    get new_operadore_url
    assert_response :success
  end

  test "should create operadore" do
    assert_difference('Operadore.count') do
      post operadores_url, params: { operadore: { email: @operadore.email, nombre: @operadore.nombre, telefono: @operadore.telefono } }
    end

    assert_redirected_to operadore_url(Operadore.last)
  end

  test "should show operadore" do
    get operadore_url(@operadore)
    assert_response :success
  end

  test "should get edit" do
    get edit_operadore_url(@operadore)
    assert_response :success
  end

  test "should update operadore" do
    patch operadore_url(@operadore), params: { operadore: { email: @operadore.email, nombre: @operadore.nombre, telefono: @operadore.telefono } }
    assert_redirected_to operadore_url(@operadore)
  end

  test "should destroy operadore" do
    assert_difference('Operadore.count', -1) do
      delete operadore_url(@operadore)
    end

    assert_redirected_to operadores_url
  end
end
