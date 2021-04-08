require 'test_helper'

class BmTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bm_type = bm_types(:one)
  end

  test "should get index" do
    get bm_types_url
    assert_response :success
  end

  test "should get new" do
    get new_bm_type_url
    assert_response :success
  end

  test "should create bm_type" do
    assert_difference('BmType.count') do
      post bm_types_url, params: { bm_type: { name: @bm_type.name } }
    end

    assert_redirected_to bm_type_url(BmType.last)
  end

  test "should show bm_type" do
    get bm_type_url(@bm_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_bm_type_url(@bm_type)
    assert_response :success
  end

  test "should update bm_type" do
    patch bm_type_url(@bm_type), params: { bm_type: { name: @bm_type.name } }
    assert_redirected_to bm_type_url(@bm_type)
  end

  test "should destroy bm_type" do
    assert_difference('BmType.count', -1) do
      delete bm_type_url(@bm_type)
    end

    assert_redirected_to bm_types_url
  end
end
