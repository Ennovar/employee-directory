require 'test_helper'

class BuisnessUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buisness_unit = buisness_units(:one)
  end

  test "should get index" do
    get buisness_units_url
    assert_response :success
  end

  test "should get new" do
    get new_buisness_unit_url
    assert_response :success
  end

  test "should create buisness_unit" do
    assert_difference('BuisnessUnit.count') do
      post buisness_units_url, params: { buisness_unit: { title: @buisness_unit.title } }
    end

    assert_redirected_to buisness_unit_url(BuisnessUnit.last)
  end

  test "should show buisness_unit" do
    get buisness_unit_url(@buisness_unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_buisness_unit_url(@buisness_unit)
    assert_response :success
  end

  test "should update buisness_unit" do
    patch buisness_unit_url(@buisness_unit), params: { buisness_unit: { title: @buisness_unit.title } }
    assert_redirected_to buisness_unit_url(@buisness_unit)
  end

  test "should destroy buisness_unit" do
    assert_difference('BuisnessUnit.count', -1) do
      delete buisness_unit_url(@buisness_unit)
    end

    assert_redirected_to buisness_units_url
  end
end
