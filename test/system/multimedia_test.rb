require "application_system_test_case"

class MultimediaTest < ApplicationSystemTestCase
  setup do
    @multimedium = multimedia(:one)
  end

  test "visiting the index" do
    visit multimedia_url
    assert_selector "h1", text: "Multimedia"
  end

  test "creating a Multimedium" do
    visit multimedia_url
    click_on "New Multimedium"

    fill_in "About", with: @multimedium.about
    fill_in "Capture date", with: @multimedium.capture_date
    fill_in "Name", with: @multimedium.name
    fill_in "Uri path", with: @multimedium.uri_path
    click_on "Create Multimedium"

    assert_text "Multimedium was successfully created"
    click_on "Back"
  end

  test "updating a Multimedium" do
    visit multimedia_url
    click_on "Edit", match: :first

    fill_in "About", with: @multimedium.about
    fill_in "Capture date", with: @multimedium.capture_date
    fill_in "Name", with: @multimedium.name
    fill_in "Uri path", with: @multimedium.uri_path
    click_on "Update Multimedium"

    assert_text "Multimedium was successfully updated"
    click_on "Back"
  end

  test "destroying a Multimedium" do
    visit multimedia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Multimedium was successfully destroyed"
  end
end
