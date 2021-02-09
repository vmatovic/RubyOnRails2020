require "application_system_test_case"

class CalTimesTest < ApplicationSystemTestCase
  setup do
    @cal_time = cal_times(:one)
  end

  test "visiting the index" do
    visit cal_times_url
    assert_selector "h1", text: "Cal Times"
  end

  test "creating a Cal time" do
    visit cal_times_url
    click_on "New Cal Time"

    fill_in "Calendar week number", with: @cal_time.calendar_week_number
    fill_in "Datefull", with: @cal_time.datefull
    fill_in "Day number in month", with: @cal_time.day_number_in_month
    fill_in "Day number in week", with: @cal_time.day_number_in_week
    click_on "Create Cal time"

    assert_text "Cal time was successfully created"
    click_on "Back"
  end

  test "updating a Cal time" do
    visit cal_times_url
    click_on "Edit", match: :first

    fill_in "Calendar week number", with: @cal_time.calendar_week_number
    fill_in "Datefull", with: @cal_time.datefull
    fill_in "Day number in month", with: @cal_time.day_number_in_month
    fill_in "Day number in week", with: @cal_time.day_number_in_week
    click_on "Update Cal time"

    assert_text "Cal time was successfully updated"
    click_on "Back"
  end

  test "destroying a Cal time" do
    visit cal_times_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cal time was successfully destroyed"
  end
end
