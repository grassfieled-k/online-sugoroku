require "application_system_test_case"

class PlayersTest < ApplicationSystemTestCase
  setup do
    @player = players(:one)
  end

  test "visiting the index" do
    visit players_url
    assert_selector "h1", text: "Players"
  end

  test "creating a Player" do
    visit players_url
    click_on "New Player"

    fill_in "Home", with: @player.home_id
    fill_in "Intelligence", with: @player.intelligence
    fill_in "Job", with: @player.job_id
    fill_in "Money", with: @player.money
    fill_in "Morality", with: @player.morality
    fill_in "Strength", with: @player.strength
    fill_in "Player name", with: @player.player_name
    fill_in "Position", with: @player.position
    fill_in "Sense", with: @player.sense
    click_on "Create Player"

    assert_text "Player was successfully created"
    click_on "Back"
  end

  test "updating a Player" do
    visit players_url
    click_on "Edit", match: :first

    fill_in "Home", with: @player.home_id
    fill_in "Intelligence", with: @player.intelligence
    fill_in "Job", with: @player.job_id
    fill_in "Money", with: @player.money
    fill_in "Morality", with: @player.morality
    fill_in "Strength", with: @player.strength
    fill_in "Player name", with: @player.player_name
    fill_in "Position", with: @player.position
    fill_in "Sense", with: @player.sense
    click_on "Update Player"

    assert_text "Player was successfully updated"
    click_on "Back"
  end

  test "destroying a Player" do
    visit players_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Player was successfully destroyed"
  end
end
