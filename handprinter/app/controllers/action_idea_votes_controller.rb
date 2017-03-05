class ActionIdeaVotesController < ApplicationController
  before_action :set_action_idea_vote, only: [:show, :edit, :update, :destroy]

  # GET /action_idea_votes
  # GET /action_idea_votes.json
  def index
    @action_idea_votes = ActionIdeaVote.all
  end

  # GET /action_idea_votes/1
  # GET /action_idea_votes/1.json
  def show
  end

  # GET /action_idea_votes/new
  def new
    @action_idea_vote = ActionIdeaVote.new
  end

  # GET /action_idea_votes/1/edit
  def edit
  end

  # POST /action_idea_votes
  # POST /action_idea_votes.json
  def create
    @action_idea_vote = ActionIdeaVote.new(action_idea_vote_params)

    respond_to do |format|
      if @action_idea_vote.save
        format.html { redirect_to @action_idea_vote, notice: 'Action idea vote was successfully created.' }
        format.json { render :show, status: :created, location: @action_idea_vote }
      else
        format.html { render :new }
        format.json { render json: @action_idea_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /action_idea_votes/1
  # PATCH/PUT /action_idea_votes/1.json
  def update
    respond_to do |format|
      if @action_idea_vote.update(action_idea_vote_params)
        format.html { redirect_to @action_idea_vote, notice: 'Action idea vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @action_idea_vote }
      else
        format.html { render :edit }
        format.json { render json: @action_idea_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_idea_votes/1
  # DELETE /action_idea_votes/1.json
  def destroy
    @action_idea_vote.destroy
    respond_to do |format|
      format.html { redirect_to action_idea_votes_url, notice: 'Action idea vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_idea_vote
      @action_idea_vote = ActionIdeaVote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def action_idea_vote_params
      params.require(:action_idea_vote).permit(:action_idea_id, :user_id)
    end
end
