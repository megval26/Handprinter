class ModelInputsController < ApplicationController
  before_action :set_model_input, only: [:show, :edit, :update, :destroy]

  # GET /model_inputs
  # GET /model_inputs.json
  def index
    @model_inputs = ModelInput.all
  end

  # GET /model_inputs/1
  # GET /model_inputs/1.json
  def show
  end

  # GET /model_inputs/new
  def new
    @model_input = ModelInput.new
  end

  # GET /model_inputs/1/edit
  def edit
  end

  # POST /model_inputs
  # POST /model_inputs.json
  def create
    @model_input = ModelInput.new(model_input_params)

    respond_to do |format|
      if @model_input.save
        format.html { redirect_to @model_input, notice: 'Model input was successfully created.' }
        format.json { render :show, status: :created, location: @model_input }
      else
        format.html { render :new }
        format.json { render json: @model_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /model_inputs/1
  # PATCH/PUT /model_inputs/1.json
  def update
    respond_to do |format|
      if @model_input.update(model_input_params)
        format.html { redirect_to @model_input, notice: 'Model input was successfully updated.' }
        format.json { render :show, status: :ok, location: @model_input }
      else
        format.html { render :edit }
        format.json { render json: @model_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /model_inputs/1
  # DELETE /model_inputs/1.json
  def destroy
    @model_input.destroy
    respond_to do |format|
      format.html { redirect_to model_inputs_url, notice: 'Model input was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model_input
      @model_input = ModelInput.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def model_input_params
      params.require(:model_input).permit(:model_id, :input_id, :source_id, :units, :quantity, :actType)
    end
end
