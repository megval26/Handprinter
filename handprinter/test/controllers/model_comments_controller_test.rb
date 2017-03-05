require 'test_helper'

class ModelCommentsControllerTest < ActionController::TestCase
  setup do
    @model_comment = model_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:model_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create model_comment" do
    assert_difference('ModelComment.count') do
      post :create, model_comment: { date_created: @model_comment.date_created, model_id: @model_comment.model_id, text: @model_comment.text, user_id: @model_comment.user_id }
    end

    assert_redirected_to model_comment_path(assigns(:model_comment))
  end

  test "should show model_comment" do
    get :show, id: @model_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @model_comment
    assert_response :success
  end

  test "should update model_comment" do
    patch :update, id: @model_comment, model_comment: { date_created: @model_comment.date_created, model_id: @model_comment.model_id, text: @model_comment.text, user_id: @model_comment.user_id }
    assert_redirected_to model_comment_path(assigns(:model_comment))
  end

  test "should destroy model_comment" do
    assert_difference('ModelComment.count', -1) do
      delete :destroy, id: @model_comment
    end

    assert_redirected_to model_comments_path
  end
end
