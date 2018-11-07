require "application_system_test_case"

class SubjectsTest < ApplicationSystemTestCase
  setup do
    @subject = subjects(:one)
  end

  test "visiting the index" do
    visit subjects_url
    assert_selector "h1", text: "Subjects"
  end

  test "creating a Subject" do
    visit subjects_url
    click_on "New Subject"

    fill_in "Address", with: @subject.address
    fill_in "Detail", with: @subject.detail
    fill_in "Garbage Type", with: @subject.garbage_type_id
    fill_in "Latitude", with: @subject.latitude
    fill_in "Longitude", with: @subject.longitude
    fill_in "Picture", with: @subject.picture
    fill_in "State", with: @subject.state_id
    fill_in "Suburb", with: @subject.suburb_id
    fill_in "User", with: @subject.user_id
    click_on "Create Subject"

    assert_text "Subject was successfully created"
    click_on "Back"
  end

  test "updating a Subject" do
    visit subjects_url
    click_on "Edit", match: :first

    fill_in "Address", with: @subject.address
    fill_in "Detail", with: @subject.detail
    fill_in "Garbage Type", with: @subject.garbage_type_id
    fill_in "Latitude", with: @subject.latitude
    fill_in "Longitude", with: @subject.longitude
    fill_in "Picture", with: @subject.picture
    fill_in "State", with: @subject.state_id
    fill_in "Suburb", with: @subject.suburb_id
    fill_in "User", with: @subject.user_id
    click_on "Update Subject"

    assert_text "Subject was successfully updated"
    click_on "Back"
  end

  test "destroying a Subject" do
    visit subjects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subject was successfully destroyed"
  end
end
