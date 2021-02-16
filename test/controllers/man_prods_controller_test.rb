require "test_helper"

class ManProdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @man_prod = man_prods(:one)
  end

  test "should get index" do
    get man_prods_url
    assert_response :success
  end

  test "should get new" do
    get new_man_prod_url
    assert_response :success
  end

  test "should create man_prod" do
    assert_difference('ManProd.count') do
      post man_prods_url, params: { man_prod: { manufacturer_id: @man_prod.manufacturer_id, product_id: @man_prod.product_id } }
    end

    assert_redirected_to man_prod_url(ManProd.last)
  end

  test "should show man_prod" do
    get man_prod_url(@man_prod)
    assert_response :success
  end

  test "should get edit" do
    get edit_man_prod_url(@man_prod)
    assert_response :success
  end

  test "should update man_prod" do
    patch man_prod_url(@man_prod), params: { man_prod: { manufacturer_id: @man_prod.manufacturer_id, product_id: @man_prod.product_id } }
    assert_redirected_to man_prod_url(@man_prod)
  end

  test "should destroy man_prod" do
    assert_difference('ManProd.count', -1) do
      delete man_prod_url(@man_prod)
    end

    assert_redirected_to man_prods_url
  end
end
