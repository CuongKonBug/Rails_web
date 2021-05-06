require "application_system_test_case"

class DanhmucsTest < ApplicationSystemTestCase
  setup do
    @danhmuc = danhmucs(:one)
  end

  test "visiting the index" do
    visit danhmucs_url
    assert_selector "h1", text: "Danhmucs"
  end

  test "creating a Danhmuc" do
    visit danhmucs_url
    click_on "New Danhmuc"

    fill_in "Tendanhmuc", with: @danhmuc.tendanhmuc
    click_on "Create Danhmuc"

    assert_text "Danhmuc was successfully created"
    click_on "Back"
  end

  test "updating a Danhmuc" do
    visit danhmucs_url
    click_on "Edit", match: :first

    fill_in "Tendanhmuc", with: @danhmuc.tendanhmuc
    click_on "Update Danhmuc"

    assert_text "Danhmuc was successfully updated"
    click_on "Back"
  end

  test "destroying a Danhmuc" do
    visit danhmucs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Danhmuc was successfully destroyed"
  end
end
