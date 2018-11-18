require "application_system_test_case"

class TurfDetailsTest < ApplicationSystemTestCase
  setup do
    @turf_detail = turf_details(:one)
  end

  test "visiting the index" do
    visit turf_details_url
    assert_selector "h1", text: "Turf Details"
  end

  test "creating a Turf detail" do
    visit turf_details_url
    click_on "New Turf Detail"

    fill_in "Address", with: @turf_detail.address
    fill_in "Title", with: @turf_detail.title
    click_on "Create Turf detail"

    assert_text "Turf detail was successfully created"
    click_on "Back"
  end

  test "updating a Turf detail" do
    visit turf_details_url
    click_on "Edit", match: :first

    fill_in "Address", with: @turf_detail.address
    fill_in "Title", with: @turf_detail.title
    click_on "Update Turf detail"

    assert_text "Turf detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Turf detail" do
    visit turf_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Turf detail was successfully destroyed"
  end
end
