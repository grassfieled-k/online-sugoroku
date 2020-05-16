require "application_system_test_case"

class SpacesTest < ApplicationSystemTestCase
  setup do
    @space = spaces(:one)
  end

  test "visiting the index" do
    visit spaces_url
    assert_selector "h1", text: "Spaces"
  end

  test "creating a Space" do
    visit spaces_url
    click_on "New Space"

    fill_in "Event", with: @space.event_id
    fill_in "Event type", with: @space.event_type
    fill_in "Map", with: @space.map_id
    fill_in "Pool", with: @space.pool_id
    fill_in "Position", with: @space.position
    click_on "Create Space"

    assert_text "Space was successfully created"
    click_on "Back"
  end

  test "updating a Space" do
    visit spaces_url
    click_on "Edit", match: :first

    fill_in "Event", with: @space.event_id
    fill_in "Event type", with: @space.event_type
    fill_in "Map", with: @space.map_id
    fill_in "Pool", with: @space.pool_id
    fill_in "Position", with: @space.position
    click_on "Update Space"

    assert_text "Space was successfully updated"
    click_on "Back"
  end

  test "destroying a Space" do
    visit spaces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Space was successfully destroyed"
  end
end
