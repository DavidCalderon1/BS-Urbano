require "application_system_test_case"

class OperadoresTest < ApplicationSystemTestCase
  setup do
    @operadore = operadores(:one)
  end

  test "visiting the index" do
    visit operadores_url
    assert_selector "h1", text: "Operadores"
  end

  test "creating a Operadore" do
    visit operadores_url
    click_on "New Operadore"

    fill_in "Email", with: @operadore.email
    fill_in "Nombre", with: @operadore.nombre
    fill_in "Telefono", with: @operadore.telefono
    click_on "Create Operadore"

    assert_text "Operadore was successfully created"
    click_on "Back"
  end

  test "updating a Operadore" do
    visit operadores_url
    click_on "Edit", match: :first

    fill_in "Email", with: @operadore.email
    fill_in "Nombre", with: @operadore.nombre
    fill_in "Telefono", with: @operadore.telefono
    click_on "Update Operadore"

    assert_text "Operadore was successfully updated"
    click_on "Back"
  end

  test "destroying a Operadore" do
    visit operadores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Operadore was successfully destroyed"
  end
end
