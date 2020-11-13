require "application_system_test_case"

class DevsTest < ApplicationSystemTestCase
  setup do
    @dev = devs(:one)
  end

  test "visiting the index" do
    visit devs_url
    assert_selector "h1", text: "Devs"
  end

  test "creating a Dev" do
    visit devs_url
    click_on "New Dev"

    fill_in "Dev type", with: @dev.dev_type
    fill_in "Language type", with: @dev.language_type
    fill_in "Listing name", with: @dev.listing_name
    fill_in "Location country", with: @dev.location_country
    fill_in "Location town", with: @dev.location_town
    fill_in "Price", with: @dev.price
    fill_in "Service type", with: @dev.service_type
    fill_in "Summary", with: @dev.summary
    click_on "Create Dev"

    assert_text "Dev was successfully created"
    click_on "Back"
  end

  test "updating a Dev" do
    visit devs_url
    click_on "Edit", match: :first

    fill_in "Dev type", with: @dev.dev_type
    fill_in "Language type", with: @dev.language_type
    fill_in "Listing name", with: @dev.listing_name
    fill_in "Location country", with: @dev.location_country
    fill_in "Location town", with: @dev.location_town
    fill_in "Price", with: @dev.price
    fill_in "Service type", with: @dev.service_type
    fill_in "Summary", with: @dev.summary
    click_on "Update Dev"

    assert_text "Dev was successfully updated"
    click_on "Back"
  end

  test "destroying a Dev" do
    visit devs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dev was successfully destroyed"
  end
end
