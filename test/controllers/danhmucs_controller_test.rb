require "test_helper"

class DanhmucsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @danhmuc = danhmucs(:one)
  end

  test "should get index" do
    get danhmucs_url
    assert_response :success
  end

  test "should get new" do
    get new_danhmuc_url
    assert_response :success
  end

  test "should create danhmuc" do
    assert_difference('Danhmuc.count') do
      post danhmucs_url, params: { danhmuc: { tendanhmuc: @danhmuc.tendanhmuc } }
    end

    assert_redirected_to danhmuc_url(Danhmuc.last)
  end

  test "should show danhmuc" do
    get danhmuc_url(@danhmuc)
    assert_response :success
  end

  test "should get edit" do
    get edit_danhmuc_url(@danhmuc)
    assert_response :success
  end

  test "should update danhmuc" do
    patch danhmuc_url(@danhmuc), params: { danhmuc: { tendanhmuc: @danhmuc.tendanhmuc } }
    assert_redirected_to danhmuc_url(@danhmuc)
  end

  test "should destroy danhmuc" do
    assert_difference('Danhmuc.count', -1) do
      delete danhmuc_url(@danhmuc)
    end

    assert_redirected_to danhmucs_url
  end
end
