require "application_system_test_case"

class GarbageTypesTest < ApplicationSystemTestCase
  setup do
    @garbage_type = garbage_types(:one)
  end

  test "visiting the index" do
    visit garbage_types_url
    assert_selector "h1", text: "Garbage Types"
  end

  test "creating a Garbage type" do
    visit garbage_types_url
    click_on "New Garbage Type"

    fill_in "Description", with: @garbage_type.description
    fill_in "Name", with: @garbage_type.name
    fill_in "Picture", with: @garbage_type.picture
    click_on "Create Garbage type"

    assert_text "Garbage type was successfully created"
    click_on "Back"
  end

  test "updating a Garbage type" do
    visit garbage_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @garbage_type.description
    fill_in "Name", with: @garbage_type.name
    fill_in "Picture", with: @garbage_type.picture
    click_on "Update Garbage type"

    assert_text "Garbage type was successfully updated"
    click_on "Back"
  end

  test "destroying a Garbage type" do
    visit garbage_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Garbage type was successfully destroyed"
  end
end
