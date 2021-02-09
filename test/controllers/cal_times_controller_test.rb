require "test_helper"

class CalTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cal_time = cal_times(:one)
  end

  test "should get index" do
    get cal_times_url
    assert_response :success
  end

  test "should get new" do
    get new_cal_time_url
    assert_response :success
  end

  test "should create cal_time" do
    assert_difference('CalTime.count') do
      post cal_times_url, params: { cal_time: { calendar_week_number: @cal_time.calendar_week_number, datefull: @cal_time.datefull, day_number_in_month: @cal_time.day_number_in_month, day_number_in_week: @cal_time.day_number_in_week } }
    end

    assert_redirected_to cal_time_url(CalTime.last)
  end

  test "should show cal_time" do
    get cal_time_url(@cal_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_cal_time_url(@cal_time)
    assert_response :success
  end

  test "should update cal_time" do
    patch cal_time_url(@cal_time), params: { cal_time: { calendar_week_number: @cal_time.calendar_week_number, datefull: @cal_time.datefull, day_number_in_month: @cal_time.day_number_in_month, day_number_in_week: @cal_time.day_number_in_week } }
    assert_redirected_to cal_time_url(@cal_time)
  end

  test "should destroy cal_time" do
    assert_difference('CalTime.count', -1) do
      delete cal_time_url(@cal_time)
    end

    assert_redirected_to cal_times_url
  end
end
