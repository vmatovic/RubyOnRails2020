require "application_system_test_case"

class CalMonthSalesTest < ApplicationSystemTestCase
  setup do
    @cal_month_sale = cal_month_sales(:one)
  end

  test "visiting the index" do
    visit cal_month_sales_url
    assert_selector "h1", text: "Cal Month Sales"
  end

  test "creating a Cal month sale" do
    visit cal_month_sales_url
    click_on "New Cal Month Sale"

    fill_in "Calendar month desc", with: @cal_month_sale.calendar_month_desc
    fill_in "Dollars", with: @cal_month_sale.dollars
    click_on "Create Cal month sale"

    assert_text "Cal month sale was successfully created"
    click_on "Back"
  end

  test "updating a Cal month sale" do
    visit cal_month_sales_url
    click_on "Edit", match: :first

    fill_in "Calendar month desc", with: @cal_month_sale.calendar_month_desc
    fill_in "Dollars", with: @cal_month_sale.dollars
    click_on "Update Cal month sale"

    assert_text "Cal month sale was successfully updated"
    click_on "Back"
  end

  test "destroying a Cal month sale" do
    visit cal_month_sales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cal month sale was successfully destroyed"
  end
end
