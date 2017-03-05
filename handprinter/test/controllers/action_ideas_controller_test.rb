require 'test_helper'

class ActionIdeasControllerTest < ActionController::TestCase
  setup do
    @action_idea = action_ideas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:action_ideas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create action_idea" do
    assert_difference('ActionIdea.count') do
      post :create, action_idea: { active: @action_idea.active, category: @action_idea.category, creator: @action_idea.creator, date_created: @action_idea.date_created, description: @action_idea.description, name: @action_idea.name, references: @action_idea.references, tags: @action_idea.tags }
    end

    assert_redirected_to action_idea_path(assigns(:action_idea))
  end

  test "should show action_idea" do
    get :show, id: @action_idea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @action_idea
    assert_response :success
  end

  test "should update action_idea" do
    patch :update, id: @action_idea, action_idea: { active: @action_idea.active, category: @action_idea.category, creator: @action_idea.creator, date_created: @action_idea.date_created, description: @action_idea.description, name: @action_idea.name, references: @action_idea.references, tags: @action_idea.tags }
    assert_redirected_to action_idea_path(assigns(:action_idea))
  end

  test "should destroy action_idea" do
    assert_difference('ActionIdea.count', -1) do
      delete :destroy, id: @action_idea
    end

    assert_redirected_to action_ideas_path
  end
end
