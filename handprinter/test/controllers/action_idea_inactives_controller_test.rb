require 'test_helper'

class ActionIdeaInactivesControllerTest < ActionController::TestCase
  setup do
    @action_idea_inactive = action_idea_inactives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:action_idea_inactives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create action_idea_inactive" do
    assert_difference('ActionIdeaInactive.count') do
      post :create, action_idea_inactive: { action_idea_id: @action_idea_inactive.action_idea_id, date_created: @action_idea_inactive.date_created, integer: @action_idea_inactive.integer, reason: @action_idea_inactive.reason, user_id: @action_idea_inactive.user_id }
    end

    assert_redirected_to action_idea_inactive_path(assigns(:action_idea_inactive))
  end

  test "should show action_idea_inactive" do
    get :show, id: @action_idea_inactive
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @action_idea_inactive
    assert_response :success
  end

  test "should update action_idea_inactive" do
    patch :update, id: @action_idea_inactive, action_idea_inactive: { action_idea_id: @action_idea_inactive.action_idea_id, date_created: @action_idea_inactive.date_created, integer: @action_idea_inactive.integer, reason: @action_idea_inactive.reason, user_id: @action_idea_inactive.user_id }
    assert_redirected_to action_idea_inactive_path(assigns(:action_idea_inactive))
  end

  test "should destroy action_idea_inactive" do
    assert_difference('ActionIdeaInactive.count', -1) do
      delete :destroy, id: @action_idea_inactive
    end

    assert_redirected_to action_idea_inactives_path
  end
end
