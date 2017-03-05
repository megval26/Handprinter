class ModelInactivesController < ApplicationController
  before_action :set_model_inactive, only: [:show, :edit, :update, :destroy]

  # GET /model_inactives
  # GET /model_inactives.json
  def index
    @model_inactives = ModelInactive.all
  end

  # GET /model_inactives/1
  # GET /model_inactives/1.json
  def show
  end

  # GET /model_inactives/new
  def new
    @model_inactive = ModelInactive.new
  end

  # GET /model_inactives/1/edit
  def edit
  end

  # POST /model_inactives
  # POST /model_inactives.json
  def create
    @model_inactive = ModelInactive.new(model_inactive_params)

    respond_to do |format|
      if @model_inactive.save
        format.html { redirect_to @model_inactive, notice: 'Model inactive was successfully created.' }
        format.json { render :show, status: :created, location: @model_inactive }
      else
        format.html { render :new }
        format.json { render json: @model_inactive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /model_inactives/1
  # PATCH/PUT /model_inactives/1.json
  def update
    respond_to do |format|
      if @model_inactive.update(model_inactive_params)
        format.html { redirect_to @model_inactive, notice: 'Model inactive was successfully updated.' }
        format.json { render :show, status: :ok, location: @model_inactive }
      else
        format.html { render :edit }
        format.json { render json: @model_inactive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /model_inactives/1
  # DELETE /model_inactives/1.json
  def destroy
    @model_inactive.destroy
    respond_to do |format|
      format.html { redirect_to model_inactives_url, notice: 'Model inactive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model_inactive
      @model_inactive = ModelInactive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def model_inactive_params
      params.require(:model_inactive).permit(:model_id, :reason, :user_id, :date_created)
    end
end
