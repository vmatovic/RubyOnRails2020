require "application_system_test_case"

class PromotionsTest < ApplicationSystemTestCase
  setup do
    @promotion = promotions(:one)
  end

  test "visiting the index" do
    visit promotions_url
    assert_selector "h1", text: "Promotions"
  end

  test "creating a Promotion" do
    visit promotions_url
    click_on "New Promotion"

    fill_in "Begin date", with: @promotion.begin_date
    fill_in "End date", with: @promotion.end_date
    fill_in "Promo cost", with: @promotion.promo_cost
    fill_in "Promo name", with: @promotion.promo_name
    click_on "Create Promotion"

    assert_text "Promotion was successfully created"
    click_on "Back"
  end

  test "updating a Promotion" do
    visit promotions_url
    click_on "Edit", match: :first

    fill_in "Begin date", with: @promotion.begin_date
    fill_in "End date", with: @promotion.end_date
    fill_in "Promo cost", with: @promotion.promo_cost
    fill_in "Promo name", with: @promotion.promo_name
    click_on "Update Promotion"

    assert_text "Promotion was successfully updated"
    click_on "Back"
  end

  test "destroying a Promotion" do
    visit promotions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Promotion was successfully destroyed"
  end
end
