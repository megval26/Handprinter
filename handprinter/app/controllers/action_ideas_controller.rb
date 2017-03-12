class ActionIdeasController < ApplicationController
  before_action :set_action_idea, only: [:show, :edit, :update, :destroy]

  # GET /action_ideas
  # GET /action_ideas.json
  def index
    @action_ideas = ActionIdea.all
  end

  # GET /action_ideas/1
  # GET /action_ideas/1.json
  def show
  end

  # GET /action_ideas/new
  def new
    @action_idea = ActionIdea.new
  end

  # GET /action_ideas/1/edit
  def edit
  end

  # POST /action_ideas
  # POST /action_ideas.json
  def create
    @action_idea = ActionIdea.new(action_idea_params)

    respond_to do |format|
      if @action_idea.save
        format.html { redirect_to @action_idea, notice: 'Action idea was successfully created.' }
        format.json { render :show, status: :created, location: @action_idea }
      else
        format.html { render :new }
        format.json { render json: @action_idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /action_ideas/1
  # PATCH/PUT /action_ideas/1.json
  def update
    respond_to do |format|
      if @action_idea.update(action_idea_params)
        format.html { redirect_to @action_idea, notice: 'Action idea was successfully updated.' }
        format.json { render :show, status: :ok, location: @action_idea }
      else
        format.html { render :edit }
        format.json { render json: @action_idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_ideas/1
  # DELETE /action_ideas/1.json
  def destroy
    @action_idea.destroy
    respond_to do |format|
      format.html { redirect_to action_ideas_url, notice: 'Action idea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_idea
      @action_idea = ActionIdea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def action_idea_params
      params.require(:action_idea).permit(:user_id, :name, :description, :references, :category, :date_created, :active, :tags)
    end
end
