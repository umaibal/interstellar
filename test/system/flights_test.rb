require "application_system_test_case"

class FlightsTest < ApplicationSystemTestCase
  setup do
    @flight = flights(:one)
  end

  test "visiting the index" do
    visit flights_url
    assert_selector "h1", text: "Flights"
  end

  test "creating a Flight" do
    visit flights_url
    click_on "New Flight"

    fill_in "Destination", with: 'Santorini'
    select '10', from: "flight[arrival_time(4i)]"
    select '20', from: "flight[arrival_time(5i)]"
    select '7', from: "flight[departure_time(4i)]", match: :first
    select '05', from: "flight[departure_time(5i)]"
    fill_in "Total seats", with: 20
    click_on "Create Flight"

    assert_text "Flight was successfully created"
    click_on "Back"
  end

  test "updating a Flight" do
    visit flights_url
    click_on "Edit", match: :first

    fill_in "Destination", with: 'Santorini'
    select '10', from: "flight[arrival_time(4i)]"
    select '20', from: "flight[arrival_time(5i)]"
    select '7', from: "flight[departure_time(4i)]", match: :first
    select '05', from: "flight[departure_time(5i)]"
    click_on "Update Flight"

    assert_text "Flight was successfully updated"
    click_on "Back"
  end

  test "destroying a Flight" do
    visit flights_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Flight was successfully destroyed"
  end
end
