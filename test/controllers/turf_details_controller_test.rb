require 'test_helper'

class TurfDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @turf_detail = turf_details(:one)
  end

  test "should get index" do
    get turf_details_url
    assert_response :success
  end

  test "should get new" do
    get new_turf_detail_url
    assert_response :success
  end

  test "should create turf_detail" do
    assert_difference('TurfDetail.count') do
      post turf_details_url, params: { turf_detail: { address: @turf_detail.address, title: @turf_detail.title } }
    end

    assert_redirected_to turf_detail_url(TurfDetail.last)
  end

  test "should show turf_detail" do
    get turf_detail_url(@turf_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_turf_detail_url(@turf_detail)
    assert_response :success
  end

  test "should update turf_detail" do
    patch turf_detail_url(@turf_detail), params: { turf_detail: { address: @turf_detail.address, title: @turf_detail.title } }
    assert_redirected_to turf_detail_url(@turf_detail)
  end

  test "should destroy turf_detail" do
    assert_difference('TurfDetail.count', -1) do
      delete turf_detail_url(@turf_detail)
    end

    assert_redirected_to turf_details_url
  end
end
