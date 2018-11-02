require "application_system_test_case"

class PublicacionesTest < ApplicationSystemTestCase
  setup do
    @publicacione = publicaciones(:one)
  end

  test "visiting the index" do
    visit publicaciones_url
    assert_selector "h1", text: "Publicaciones"
  end

  test "creating a Publicacione" do
    visit publicaciones_url
    click_on "New Publicacione"

    fill_in "Estado", with: @publicacione.estado_id
    fill_in "Foto", with: @publicacione.foto
    fill_in "Usuario", with: @publicacione.usuario_id
    click_on "Create Publicacione"

    assert_text "Publicacione was successfully created"
    click_on "Back"
  end

  test "updating a Publicacione" do
    visit publicaciones_url
    click_on "Edit", match: :first

    fill_in "Estado", with: @publicacione.estado_id
    fill_in "Foto", with: @publicacione.foto
    fill_in "Usuario", with: @publicacione.usuario_id
    click_on "Update Publicacione"

    assert_text "Publicacione was successfully updated"
    click_on "Back"
  end

  test "destroying a Publicacione" do
    visit publicaciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Publicacione was successfully destroyed"
  end
end