require "test_helper"

class StatusCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status_comment = status_comments(:one)
  end

  test "should get index" do
    get status_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_status_comment_url
    assert_response :success
  end

  test "should create status_comment" do
    assert_difference('StatusComment.count') do
      post status_comments_url, params: { status_comment: { content: @status_comment.content, status_id: @status_comment.status_id, user_id: @status_comment.user_id } }
    end

    assert_redirected_to status_comment_url(StatusComment.last)
  end

  test "should show status_comment" do
    get status_comment_url(@status_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_status_comment_url(@status_comment)
    assert_response :success
  end

  test "should update status_comment" do
    patch status_comment_url(@status_comment), params: { status_comment: { content: @status_comment.content, status_id: @status_comment.status_id, user_id: @status_comment.user_id } }
    assert_redirected_to status_comment_url(@status_comment)
  end

  test "should destroy status_comment" do
    assert_difference('StatusComment.count', -1) do
      delete status_comment_url(@status_comment)
    end

    assert_redirected_to status_comments_url
  end
end
