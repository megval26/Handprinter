require 'test_helper'

class ModelVotesControllerTest < ActionController::TestCase
  setup do
    @model_vote = model_votes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:model_votes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create model_vote" do
    assert_difference('ModelVote.count') do
      post :create, model_vote: { model_id: @model_vote.model_id, user_id: @model_vote.user_id }
    end

    assert_redirected_to model_vote_path(assigns(:model_vote))
  end

  test "should show model_vote" do
    get :show, id: @model_vote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @model_vote
    assert_response :success
  end

  test "should update model_vote" do
    patch :update, id: @model_vote, model_vote: { model_id: @model_vote.model_id, user_id: @model_vote.user_id }
    assert_redirected_to model_vote_path(assigns(:model_vote))
  end

  test "should destroy model_vote" do
    assert_difference('ModelVote.count', -1) do
      delete :destroy, id: @model_vote
    end

    assert_redirected_to model_votes_path
  end
end
