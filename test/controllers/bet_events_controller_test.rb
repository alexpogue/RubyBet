require 'test_helper'

class BetEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bet_event = bet_events(:one)
  end

  test "should get index" do
    get bet_events_url
    assert_response :success
  end

  test "should get new" do
    get new_bet_event_url
    assert_response :success
  end

  test "should create bet_event" do
    assert_difference('BetEvent.count') do
      post bet_events_url, params: { bet_event: { description: @bet_event.description, end_time: @bet_event.end_time, name: @bet_event.name, status: @bet_event.status, winning_option: @bet_event.winning_option } }
    end

    assert_redirected_to bet_event_url(BetEvent.last)
  end

  test "should show bet_event" do
    get bet_event_url(@bet_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_bet_event_url(@bet_event)
    assert_response :success
  end

  test "should update bet_event" do
    patch bet_event_url(@bet_event), params: { bet_event: { description: @bet_event.description, end_time: @bet_event.end_time, name: @bet_event.name, status: @bet_event.status, winning_option: @bet_event.winning_option } }
    assert_redirected_to bet_event_url(@bet_event)
  end

  test "should destroy bet_event" do
    assert_difference('BetEvent.count', -1) do
      delete bet_event_url(@bet_event)
    end

    assert_redirected_to bet_events_url
  end
end
