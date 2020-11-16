require 'test_helper'

class ItemSelectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_selection = item_selections(:one)
  end

  test "should get index" do
    get item_selections_url
    assert_response :success
  end

  test "should get new" do
    get new_item_selection_url
    assert_response :success
  end

  test "should create item_selection" do
    assert_difference('ItemSelection.count') do
      post item_selections_url, params: { item_selection: { cart_id: @item_selection.cart_id, dev_id: @item_selection.dev_id } }
    end

    assert_redirected_to item_selection_url(ItemSelection.last)
  end

  test "should show item_selection" do
    get item_selection_url(@item_selection)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_selection_url(@item_selection)
    assert_response :success
  end

  test "should update item_selection" do
    patch item_selection_url(@item_selection), params: { item_selection: { cart_id: @item_selection.cart_id, dev_id: @item_selection.dev_id } }
    assert_redirected_to item_selection_url(@item_selection)
  end

  test "should destroy item_selection" do
    assert_difference('ItemSelection.count', -1) do
      delete item_selection_url(@item_selection)
    end

    assert_redirected_to item_selections_url
  end
end
