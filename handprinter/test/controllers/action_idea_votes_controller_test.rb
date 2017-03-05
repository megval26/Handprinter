require 'test_helper'

class ActionIdeaVotesControllerTest < ActionController::TestCase
  setup do
    @action_idea_vote = action_idea_votes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:action_idea_votes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create action_idea_vote" do
    assert_difference('ActionIdeaVote.count') do
      post :create, action_idea_vote: { action_idea_id: @action_idea_vote.action_idea_id, user_id: @action_idea_vote.user_id }
    end

    assert_redirected_to action_idea_vote_path(assigns(:action_idea_vote))
  end

  test "should show action_idea_vote" do
    get :show, id: @action_idea_vote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @action_idea_vote
    assert_response :success
  end

  test "should update action_idea_vote" do
    patch :update, id: @action_idea_vote, action_idea_vote: { action_idea_id: @action_idea_vote.action_idea_id, user_id: @action_idea_vote.user_id }
    assert_redirected_to action_idea_vote_path(assigns(:action_idea_vote))
  end

  test "should destroy action_idea_vote" do
    assert_difference('ActionIdeaVote.count', -1) do
      delete :destroy, id: @action_idea_vote
    end

    assert_redirected_to action_idea_votes_path
  end
end
