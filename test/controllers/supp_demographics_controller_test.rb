require "test_helper"

class SuppDemographicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supp_demographic = supp_demographics(:one)
  end

  test "should get index" do
    get supp_demographics_url
    assert_response :success
  end

  test "should get new" do
    get new_supp_demographic_url
    assert_response :success
  end

  test "should create supp_demographic" do
    assert_difference('SuppDemographic.count') do
      post supp_demographics_url, params: { supp_demographic: { comment: @supp_demographic.comment, education: @supp_demographic.education, household_size: @supp_demographic.household_size, years_residence: @supp_demographic.years_residence } }
    end

    assert_redirected_to supp_demographic_url(SuppDemographic.last)
  end

  test "should show supp_demographic" do
    get supp_demographic_url(@supp_demographic)
    assert_response :success
  end

  test "should get edit" do
    get edit_supp_demographic_url(@supp_demographic)
    assert_response :success
  end

  test "should update supp_demographic" do
    patch supp_demographic_url(@supp_demographic), params: { supp_demographic: { comment: @supp_demographic.comment, education: @supp_demographic.education, household_size: @supp_demographic.household_size, years_residence: @supp_demographic.years_residence } }
    assert_redirected_to supp_demographic_url(@supp_demographic)
  end

  test "should destroy supp_demographic" do
    assert_difference('SuppDemographic.count', -1) do
      delete supp_demographic_url(@supp_demographic)
    end

    assert_redirected_to supp_demographics_url
  end
end
