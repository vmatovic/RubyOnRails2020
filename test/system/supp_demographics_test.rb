require "application_system_test_case"

class SuppDemographicsTest < ApplicationSystemTestCase
  setup do
    @supp_demographic = supp_demographics(:one)
  end

  test "visiting the index" do
    visit supp_demographics_url
    assert_selector "h1", text: "Supp Demographics"
  end

  test "creating a Supp demographic" do
    visit supp_demographics_url
    click_on "New Supp Demographic"

    fill_in "Comment", with: @supp_demographic.comment
    fill_in "Education", with: @supp_demographic.education
    fill_in "Household size", with: @supp_demographic.household_size
    fill_in "Years residence", with: @supp_demographic.years_residence
    click_on "Create Supp demographic"

    assert_text "Supp demographic was successfully created"
    click_on "Back"
  end

  test "updating a Supp demographic" do
    visit supp_demographics_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @supp_demographic.comment
    fill_in "Education", with: @supp_demographic.education
    fill_in "Household size", with: @supp_demographic.household_size
    fill_in "Years residence", with: @supp_demographic.years_residence
    click_on "Update Supp demographic"

    assert_text "Supp demographic was successfully updated"
    click_on "Back"
  end

  test "destroying a Supp demographic" do
    visit supp_demographics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Supp demographic was successfully destroyed"
  end
end
