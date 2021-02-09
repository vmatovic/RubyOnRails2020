require "test_helper"

class CalMonthSalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cal_month_sale = cal_month_sales(:one)
  end

  test "should get index" do
    get cal_month_sales_url
    assert_response :success
  end

  test "should get new" do
    get new_cal_month_sale_url
    assert_response :success
  end

  test "should create cal_month_sale" do
    assert_difference('CalMonthSale.count') do
      post cal_month_sales_url, params: { cal_month_sale: { calendar_month_desc: @cal_month_sale.calendar_month_desc, dollars: @cal_month_sale.dollars } }
    end

    assert_redirected_to cal_month_sale_url(CalMonthSale.last)
  end

  test "should show cal_month_sale" do
    get cal_month_sale_url(@cal_month_sale)
    assert_response :success
  end

  test "should get edit" do
    get edit_cal_month_sale_url(@cal_month_sale)
    assert_response :success
  end

  test "should update cal_month_sale" do
    patch cal_month_sale_url(@cal_month_sale), params: { cal_month_sale: { calendar_month_desc: @cal_month_sale.calendar_month_desc, dollars: @cal_month_sale.dollars } }
    assert_redirected_to cal_month_sale_url(@cal_month_sale)
  end

  test "should destroy cal_month_sale" do
    assert_difference('CalMonthSale.count', -1) do
      delete cal_month_sale_url(@cal_month_sale)
    end

    assert_redirected_to cal_month_sales_url
  end
end
