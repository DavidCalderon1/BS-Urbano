require "application_system_test_case"

class TipoBasurasTest < ApplicationSystemTestCase
  setup do
    @tipo_basura = tipo_basuras(:one)
  end

  test "visiting the index" do
    visit tipo_basuras_url
    assert_selector "h1", text: "Tipo Basuras"
  end

  test "creating a Tipo basura" do
    visit tipo_basuras_url
    click_on "New Tipo Basura"

    fill_in "Descripcion", with: @tipo_basura.descripcion
    fill_in "Foto", with: @tipo_basura.foto
    fill_in "Nombre", with: @tipo_basura.nombre
    click_on "Create Tipo basura"

    assert_text "Tipo basura was successfully created"
    click_on "Back"
  end

  test "updating a Tipo basura" do
    visit tipo_basuras_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @tipo_basura.descripcion
    fill_in "Foto", with: @tipo_basura.foto
    fill_in "Nombre", with: @tipo_basura.nombre
    click_on "Update Tipo basura"

    assert_text "Tipo basura was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo basura" do
    visit tipo_basuras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo basura was successfully destroyed"
  end
end
