require "application_system_test_case"

class TruyensTest < ApplicationSystemTestCase
  setup do
    @truyen = truyens(:one)
  end

  test "visiting the index" do
    visit truyens_url
    assert_selector "h1", text: "Truyens"
  end

  test "creating a Truyen" do
    visit truyens_url
    click_on "New Truyen"

    fill_in "Anh", with: @truyen.anh
    fill_in "Iddanhmuc", with: @truyen.iddanhmuc
    fill_in "Mota", with: @truyen.mota
    fill_in "Noidung", with: @truyen.noidung
    fill_in "Tentruyen", with: @truyen.tentruyen
    fill_in "Thoiluong", with: @truyen.thoiluong
    click_on "Create Truyen"

    assert_text "Truyen was successfully created"
    click_on "Back"
  end

  test "updating a Truyen" do
    visit truyens_url
    click_on "Edit", match: :first

    fill_in "Anh", with: @truyen.anh
    fill_in "Iddanhmuc", with: @truyen.iddanhmuc
    fill_in "Mota", with: @truyen.mota
    fill_in "Noidung", with: @truyen.noidung
    fill_in "Tentruyen", with: @truyen.tentruyen
    fill_in "Thoiluong", with: @truyen.thoiluong
    click_on "Update Truyen"

    assert_text "Truyen was successfully updated"
    click_on "Back"
  end

  test "destroying a Truyen" do
    visit truyens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Truyen was successfully destroyed"
  end
end
