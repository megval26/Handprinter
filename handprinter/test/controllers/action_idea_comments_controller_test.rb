require 'test_helper'

class ActionIdeaCommentsControllerTest < ActionController::TestCase
  setup do
    @action_idea_comment = action_idea_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:action_idea_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create action_idea_comment" do
    assert_difference('ActionIdeaComment.count') do
      post :create, action_idea_comment: { action_idea_id: @action_idea_comment.action_idea_id, date_created: @action_idea_comment.date_created, text: @action_idea_comment.text, user_id: @action_idea_comment.user_id }
    end

    assert_redirected_to action_idea_comment_path(assigns(:action_idea_comment))
  end

  test "should show action_idea_comment" do
    get :show, id: @action_idea_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @action_idea_comment
    assert_response :success
  end

  test "should update action_idea_comment" do
    patch :update, id: @action_idea_comment, action_idea_comment: { action_idea_id: @action_idea_comment.action_idea_id, date_created: @action_idea_comment.date_created, text: @action_idea_comment.text, user_id: @action_idea_comment.user_id }
    assert_redirected_to action_idea_comment_path(assigns(:action_idea_comment))
  end

  test "should destroy action_idea_comment" do
    assert_difference('ActionIdeaComment.count', -1) do
      delete :destroy, id: @action_idea_comment
    end

    assert_redirected_to action_idea_comments_path
  end
end
