require "application_system_test_case"

class ItemSelectionsTest < ApplicationSystemTestCase
  setup do
    @item_selection = item_selections(:one)
  end

  test "visiting the index" do
    visit item_selections_url
    assert_selector "h1", text: "Item Selections"
  end

  test "creating a Item selection" do
    visit item_selections_url
    click_on "New Item Selection"

    fill_in "Cart", with: @item_selection.cart_id
    fill_in "Dev", with: @item_selection.dev_id
    click_on "Create Item selection"

    assert_text "Item selection was successfully created"
    click_on "Back"
  end

  test "updating a Item selection" do
    visit item_selections_url
    click_on "Edit", match: :first

    fill_in "Cart", with: @item_selection.cart_id
    fill_in "Dev", with: @item_selection.dev_id
    click_on "Update Item selection"

    assert_text "Item selection was successfully updated"
    click_on "Back"
  end

  test "destroying a Item selection" do
    visit item_selections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item selection was successfully destroyed"
  end
end
