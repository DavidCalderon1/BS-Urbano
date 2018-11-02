require 'test_helper'

class NotificacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notificacione = notificaciones(:one)
  end

  test "should get index" do
    get notificaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_notificacione_url
    assert_response :success
  end

  test "should create notificacione" do
    assert_difference('Notificacione.count') do
      post notificaciones_url, params: { notificacione: { caso_id: @notificacione.caso_id, usuario_id: @notificacione.usuario_id, visto: @notificacione.visto } }
    end

    assert_redirected_to notificacione_url(Notificacione.last)
  end

  test "should show notificacione" do
    get notificacione_url(@notificacione)
    assert_response :success
  end

  test "should get edit" do
    get edit_notificacione_url(@notificacione)
    assert_response :success
  end

  test "should update notificacione" do
    patch notificacione_url(@notificacione), params: { notificacione: { caso_id: @notificacione.caso_id, usuario_id: @notificacione.usuario_id, visto: @notificacione.visto } }
    assert_redirected_to notificacione_url(@notificacione)
  end

  test "should destroy notificacione" do
    assert_difference('Notificacione.count', -1) do
      delete notificacione_url(@notificacione)
    end

    assert_redirected_to notificaciones_url
  end
end
