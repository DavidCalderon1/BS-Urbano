require "application_system_test_case"

class SugerenciaTest < ApplicationSystemTestCase
  setup do
    @sugerencium = sugerencia(:one)
  end

  test "visiting the index" do
    visit sugerencia_url
    assert_selector "h1", text: "Sugerencia"
  end

  test "creating a Sugerencium" do
    visit sugerencia_url
    click_on "New Sugerencium"

    fill_in "Detalle", with: @sugerencium.detalle
    fill_in "Fecha", with: @sugerencium.fecha
    fill_in "Usuario", with: @sugerencium.usuario_id
    click_on "Create Sugerencium"

    assert_text "Sugerencium was successfully created"
    click_on "Back"
  end

  test "updating a Sugerencium" do
    visit sugerencia_url
    click_on "Edit", match: :first

    fill_in "Detalle", with: @sugerencium.detalle
    fill_in "Fecha", with: @sugerencium.fecha
    fill_in "Usuario", with: @sugerencium.usuario_id
    click_on "Update Sugerencium"

    assert_text "Sugerencium was successfully updated"
    click_on "Back"
  end

  test "destroying a Sugerencium" do
    visit sugerencia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sugerencium was successfully destroyed"
  end
end
