require "test_helper"

class TruyensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truyen = truyens(:one)
  end

  test "should get index" do
    get truyens_url
    assert_response :success
  end

  test "should get new" do
    get new_truyen_url
    assert_response :success
  end

  test "should create truyen" do
    assert_difference('Truyen.count') do
      post truyens_url, params: { truyen: { anh: @truyen.anh, iddanhmuc: @truyen.iddanhmuc, mota: @truyen.mota, noidung: @truyen.noidung, tentruyen: @truyen.tentruyen, thoiluong: @truyen.thoiluong } }
    end

    assert_redirected_to truyen_url(Truyen.last)
  end

  test "should show truyen" do
    get truyen_url(@truyen)
    assert_response :success
  end

  test "should get edit" do
    get edit_truyen_url(@truyen)
    assert_response :success
  end

  test "should update truyen" do
    patch truyen_url(@truyen), params: { truyen: { anh: @truyen.anh, iddanhmuc: @truyen.iddanhmuc, mota: @truyen.mota, noidung: @truyen.noidung, tentruyen: @truyen.tentruyen, thoiluong: @truyen.thoiluong } }
    assert_redirected_to truyen_url(@truyen)
  end

  test "should destroy truyen" do
    assert_difference('Truyen.count', -1) do
      delete truyen_url(@truyen)
    end

    assert_redirected_to truyens_url
  end
end
