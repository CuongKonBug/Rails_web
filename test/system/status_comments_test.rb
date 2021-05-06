require "application_system_test_case"

class StatusCommentsTest < ApplicationSystemTestCase
  setup do
    @status_comment = status_comments(:one)
  end

  test "visiting the index" do
    visit status_comments_url
    assert_selector "h1", text: "Status Comments"
  end

  test "creating a Status comment" do
    visit status_comments_url
    click_on "New Status Comment"

    fill_in "Content", with: @status_comment.content
    fill_in "Status", with: @status_comment.status_id
    fill_in "User", with: @status_comment.user_id
    click_on "Create Status comment"

    assert_text "Status comment was successfully created"
    click_on "Back"
  end

  test "updating a Status comment" do
    visit status_comments_url
    click_on "Edit", match: :first

    fill_in "Content", with: @status_comment.content
    fill_in "Status", with: @status_comment.status_id
    fill_in "User", with: @status_comment.user_id
    click_on "Update Status comment"

    assert_text "Status comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Status comment" do
    visit status_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Status comment was successfully destroyed"
  end
end
