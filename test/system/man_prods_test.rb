require "application_system_test_case"

class ManProdsTest < ApplicationSystemTestCase
  setup do
    @man_prod = man_prods(:one)
  end

  test "visiting the index" do
    visit man_prods_url
    assert_selector "h1", text: "Man Prods"
  end

  test "creating a Man prod" do
    visit man_prods_url
    click_on "New Man Prod"

    fill_in "Manufacturer", with: @man_prod.manufacturer_id
    fill_in "Product", with: @man_prod.product_id
    click_on "Create Man prod"

    assert_text "Man prod was successfully created"
    click_on "Back"
  end

  test "updating a Man prod" do
    visit man_prods_url
    click_on "Edit", match: :first

    fill_in "Manufacturer", with: @man_prod.manufacturer_id
    fill_in "Product", with: @man_prod.product_id
    click_on "Update Man prod"

    assert_text "Man prod was successfully updated"
    click_on "Back"
  end

  test "destroying a Man prod" do
    visit man_prods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Man prod was successfully destroyed"
  end
end
