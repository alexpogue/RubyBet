require "application_system_test_case"

class BetEventsTest < ApplicationSystemTestCase
  setup do
    @bet_event = bet_events(:one)
  end

  test "visiting the index" do
    visit bet_events_url
    assert_selector "h1", text: "Bet Events"
  end

  test "creating a Bet event" do
    visit bet_events_url
    click_on "New Bet Event"

    fill_in "Description", with: @bet_event.description
    fill_in "End time", with: @bet_event.end_time
    fill_in "Name", with: @bet_event.name
    fill_in "Status", with: @bet_event.status
    fill_in "Winning option", with: @bet_event.winning_option
    click_on "Create Bet event"

    assert_text "Bet event was successfully created"
    click_on "Back"
  end

  test "updating a Bet event" do
    visit bet_events_url
    click_on "Edit", match: :first

    fill_in "Description", with: @bet_event.description
    fill_in "End time", with: @bet_event.end_time
    fill_in "Name", with: @bet_event.name
    fill_in "Status", with: @bet_event.status
    fill_in "Winning option", with: @bet_event.winning_option
    click_on "Update Bet event"

    assert_text "Bet event was successfully updated"
    click_on "Back"
  end

  test "destroying a Bet event" do
    visit bet_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bet event was successfully destroyed"
  end
end
