require "application_system_test_case"

class NotificacionesTest < ApplicationSystemTestCase
  setup do
    @notificacione = notificaciones(:one)
  end

  test "visiting the index" do
    visit notificaciones_url
    assert_selector "h1", text: "Notificaciones"
  end

  test "creating a Notificacione" do
    visit notificaciones_url
    click_on "New Notificacione"

    fill_in "Caso", with: @notificacione.caso_id
    fill_in "Usuario", with: @notificacione.usuario_id
    fill_in "Visto", with: @notificacione.visto
    click_on "Create Notificacione"

    assert_text "Notificacione was successfully created"
    click_on "Back"
  end

  test "updating a Notificacione" do
    visit notificaciones_url
    click_on "Edit", match: :first

    fill_in "Caso", with: @notificacione.caso_id
    fill_in "Usuario", with: @notificacione.usuario_id
    fill_in "Visto", with: @notificacione.visto
    click_on "Update Notificacione"

    assert_text "Notificacione was successfully updated"
    click_on "Back"
  end

  test "destroying a Notificacione" do
    visit notificaciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Notificacione was successfully destroyed"
  end
end
