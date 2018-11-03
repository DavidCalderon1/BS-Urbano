require "application_system_test_case"

class RutasTest < ApplicationSystemTestCase
  setup do
    @ruta = rutas(:one)
  end

  test "visiting the index" do
    visit rutas_url
    assert_selector "h1", text: "Rutas"
  end

  test "creating a Rutas" do
    visit rutas_url
    click_on "New Rutas"

    click_on "Create Rutas"

    assert_text "Rutas was successfully created"
    click_on "Back"
  end

  test "updating a Rutas" do
    visit rutas_url
    click_on "Edit", match: :first

    click_on "Update Rutas"

    assert_text "Rutas was successfully updated"
    click_on "Back"
  end

  test "destroying a Rutas" do
    visit rutas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rutas was successfully destroyed"
  end
end
