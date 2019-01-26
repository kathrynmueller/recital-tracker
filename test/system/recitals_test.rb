require "application_system_test_case"

class RecitalsTest < ApplicationSystemTestCase
  setup do
    @recital = recitals(:one)
  end

  test "visiting the index" do
    visit recitals_url
    assert_selector "h1", text: "Recitals"
  end

  test "creating a Recital" do
    visit recitals_url
    click_on "New Recital"

    fill_in "Date", with: @recital.date
    fill_in "Location", with: @recital.location
    fill_in "Name", with: @recital.name
    fill_in "Note", with: @recital.note
    click_on "Create Recital"

    assert_text "Recital was successfully created"
    click_on "Back"
  end

  test "updating a Recital" do
    visit recitals_url
    click_on "Edit", match: :first

    fill_in "Date", with: @recital.date
    fill_in "Location", with: @recital.location
    fill_in "Name", with: @recital.name
    fill_in "Note", with: @recital.note
    click_on "Update Recital"

    assert_text "Recital was successfully updated"
    click_on "Back"
  end

  test "destroying a Recital" do
    visit recitals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recital was successfully destroyed"
  end
end
