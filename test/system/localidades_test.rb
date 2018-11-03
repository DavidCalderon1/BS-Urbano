require "application_system_test_case"

class LocalidadesTest < ApplicationSystemTestCase
  setup do
    @localidade = localidades(:one)
  end

  test "visiting the index" do
    visit localidades_url
    assert_selector "h1", text: "Localidades"
  end

  test "creating a Localidade" do
    visit localidades_url
    click_on "New Localidade"

    fill_in "Ciudad", with: @localidade.ciudad_id
    fill_in "Latitud", with: @localidade.latitud
    fill_in "Longitud", with: @localidade.longitud
    fill_in "Nombre", with: @localidade.nombre
    click_on "Create Localidade"

    assert_text "Localidade was successfully created"
    click_on "Back"
  end

  test "updating a Localidade" do
    visit localidades_url
    click_on "Edit", match: :first

    fill_in "Ciudad", with: @localidade.ciudad_id
    fill_in "Latitud", with: @localidade.latitud
    fill_in "Longitud", with: @localidade.longitud
    fill_in "Nombre", with: @localidade.nombre
    click_on "Update Localidade"

    assert_text "Localidade was successfully updated"
    click_on "Back"
  end

  test "destroying a Localidade" do
    visit localidades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Localidade was successfully destroyed"
  end
end
