class ActionIdeaInactivesController < ApplicationController
  before_action :set_action_idea_inactive, only: [:show, :edit, :update, :destroy]

  # GET /action_idea_inactives
  # GET /action_idea_inactives.json
  def index
    @action_idea_inactives = ActionIdeaInactive.all
  end

  # GET /action_idea_inactives/1
  # GET /action_idea_inactives/1.json
  def show
  end

  # GET /action_idea_inactives/new
  def new
    @action_idea_inactive = ActionIdeaInactive.new
  end

  # GET /action_idea_inactives/1/edit
  def edit
  end

  # POST /action_idea_inactives
  # POST /action_idea_inactives.json
  def create
    @action_idea_inactive = ActionIdeaInactive.new(action_idea_inactive_params)

    respond_to do |format|
      if @action_idea_inactive.save
        format.html { redirect_to @action_idea_inactive, notice: 'Action idea inactive was successfully created.' }
        format.json { render :show, status: :created, location: @action_idea_inactive }
      else
        format.html { render :new }
        format.json { render json: @action_idea_inactive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /action_idea_inactives/1
  # PATCH/PUT /action_idea_inactives/1.json
  def update
    respond_to do |format|
      if @action_idea_inactive.update(action_idea_inactive_params)
        format.html { redirect_to @action_idea_inactive, notice: 'Action idea inactive was successfully updated.' }
        format.json { render :show, status: :ok, location: @action_idea_inactive }
      else
        format.html { render :edit }
        format.json { render json: @action_idea_inactive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_idea_inactives/1
  # DELETE /action_idea_inactives/1.json
  def destroy
    @action_idea_inactive.destroy
    respond_to do |format|
      format.html { redirect_to action_idea_inactives_url, notice: 'Action idea inactive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_idea_inactive
      @action_idea_inactive = ActionIdeaInactive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def action_idea_inactive_params
      params.require(:action_idea_inactive).permit(:action_idea_id, :integer, :reason, :user_id, :date_created)
    end
end
