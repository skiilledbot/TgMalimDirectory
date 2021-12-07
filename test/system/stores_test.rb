require "application_system_test_case"

class StoresTest < ApplicationSystemTestCase
  setup do
    @store = stores(:one)
  end

  test "visiting the index" do
    visit stores_url
    assert_selector "h1", text: "Stores"
  end

  test "creating a Store" do
    visit stores_url
    click_on "New Store"

    fill_in "Category", with: @store.category_id
    fill_in "Closing", with: @store.closing
    fill_in "Contact", with: @store.contact
    fill_in "Coordinates", with: @store.coordinates
    fill_in "Description", with: @store.description
    fill_in "Holiday", with: @store.holiday_id
    fill_in "Name", with: @store.name
    fill_in "Opening", with: @store.opening
    fill_in "User", with: @store.user_id
    click_on "Create Store"

    assert_text "Store was successfully created"
    click_on "Back"
  end

  test "updating a Store" do
    visit stores_url
    click_on "Edit", match: :first

    fill_in "Category", with: @store.category_id
    fill_in "Closing", with: @store.closing
    fill_in "Contact", with: @store.contact
    fill_in "Coordinates", with: @store.coordinates
    fill_in "Description", with: @store.description
    fill_in "Holiday", with: @store.holiday_id
    fill_in "Name", with: @store.name
    fill_in "Opening", with: @store.opening
    fill_in "User", with: @store.user_id
    click_on "Update Store"

    assert_text "Store was successfully updated"
    click_on "Back"
  end

  test "destroying a Store" do
    visit stores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Store was successfully destroyed"
  end
end