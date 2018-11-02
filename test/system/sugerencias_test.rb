require "application_system_test_case"

class SugerenciasTest < ApplicationSystemTestCase
  setup do
    @sugerencia = sugerencias(:one)
  end

  test "visiting the index" do
    visit sugerencias_url
    assert_selector "h1", text: "Sugerencias"
  end

  test "creating a Sugerencias" do
    visit sugerencias_url
    click_on "New Sugerencias"

    click_on "Create Sugerencias"

    assert_text "Sugerencias was successfully created"
    click_on "Back"
  end

  test "updating a Sugerencias" do
    visit sugerencias_url
    click_on "Edit", match: :first

    click_on "Update Sugerencias"

    assert_text "Sugerencias was successfully updated"
    click_on "Back"
  end

  test "destroying a Sugerencias" do
    visit sugerencias_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sugerencias was successfully destroyed"
  end
end
