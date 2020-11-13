require 'test_helper'

class DevsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dev = devs(:one)
  end

  test "should get index" do
    get devs_url
    assert_response :success
  end

  test "should get new" do
    get new_dev_url
    assert_response :success
  end

  test "should create dev" do
    assert_difference('Dev.count') do
      post devs_url, params: { dev: { dev_type: @dev.dev_type, language_type: @dev.language_type, listing_name: @dev.listing_name, location_country: @dev.location_country, location_town: @dev.location_town, price: @dev.price, service_type: @dev.service_type, summary: @dev.summary } }
    end

    assert_redirected_to dev_url(Dev.last)
  end

  test "should show dev" do
    get dev_url(@dev)
    assert_response :success
  end

  test "should get edit" do
    get edit_dev_url(@dev)
    assert_response :success
  end

  test "should update dev" do
    patch dev_url(@dev), params: { dev: { dev_type: @dev.dev_type, language_type: @dev.language_type, listing_name: @dev.listing_name, location_country: @dev.location_country, location_town: @dev.location_town, price: @dev.price, service_type: @dev.service_type, summary: @dev.summary } }
    assert_redirected_to dev_url(@dev)
  end

  test "should destroy dev" do
    assert_difference('Dev.count', -1) do
      delete dev_url(@dev)
    end

    assert_redirected_to devs_url
  end
end
