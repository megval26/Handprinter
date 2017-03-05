require 'test_helper'

class ModelInactivesControllerTest < ActionController::TestCase
  setup do
    @model_inactive = model_inactives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:model_inactives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create model_inactive" do
    assert_difference('ModelInactive.count') do
      post :create, model_inactive: { date_created: @model_inactive.date_created, model_id: @model_inactive.model_id, reason: @model_inactive.reason, user_id: @model_inactive.user_id }
    end

    assert_redirected_to model_inactive_path(assigns(:model_inactive))
  end

  test "should show model_inactive" do
    get :show, id: @model_inactive
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @model_inactive
    assert_response :success
  end

  test "should update model_inactive" do
    patch :update, id: @model_inactive, model_inactive: { date_created: @model_inactive.date_created, model_id: @model_inactive.model_id, reason: @model_inactive.reason, user_id: @model_inactive.user_id }
    assert_redirected_to model_inactive_path(assigns(:model_inactive))
  end

  test "should destroy model_inactive" do
    assert_difference('ModelInactive.count', -1) do
      delete :destroy, id: @model_inactive
    end

    assert_redirected_to model_inactives_path
  end
end
