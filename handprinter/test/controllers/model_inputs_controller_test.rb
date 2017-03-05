require 'test_helper'

class ModelInputsControllerTest < ActionController::TestCase
  setup do
    @model_input = model_inputs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:model_inputs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create model_input" do
    assert_difference('ModelInput.count') do
      post :create, model_input: { input_id: @model_input.input_id, model_id: @model_input.model_id, source_id: @model_input.source_id, units: @model_input.units }
    end

    assert_redirected_to model_input_path(assigns(:model_input))
  end

  test "should show model_input" do
    get :show, id: @model_input
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @model_input
    assert_response :success
  end

  test "should update model_input" do
    patch :update, id: @model_input, model_input: { input_id: @model_input.input_id, model_id: @model_input.model_id, source_id: @model_input.source_id, units: @model_input.units }
    assert_redirected_to model_input_path(assigns(:model_input))
  end

  test "should destroy model_input" do
    assert_difference('ModelInput.count', -1) do
      delete :destroy, id: @model_input
    end

    assert_redirected_to model_inputs_path
  end
end
