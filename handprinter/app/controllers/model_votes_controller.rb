class ModelVotesController < ApplicationController
  before_action :set_model_vote, only: [:show, :edit, :update, :destroy]

  # GET /model_votes
  # GET /model_votes.json
  def index
    @model_votes = ModelVote.all
  end

  # GET /model_votes/1
  # GET /model_votes/1.json
  def show
  end

  # GET /model_votes/new
  def new
    @model_vote = ModelVote.new
  end

  # GET /model_votes/1/edit
  def edit
  end

  # POST /model_votes
  # POST /model_votes.json
  def create
    @model_vote = ModelVote.new(model_vote_params)

    respond_to do |format|
      if @model_vote.save
        format.html { redirect_to @model_vote, notice: 'Model vote was successfully created.' }
        format.json { render :show, status: :created, location: @model_vote }
      else
        format.html { render :new }
        format.json { render json: @model_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /model_votes/1
  # PATCH/PUT /model_votes/1.json
  def update
    respond_to do |format|
      if @model_vote.update(model_vote_params)
        format.html { redirect_to @model_vote, notice: 'Model vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @model_vote }
      else
        format.html { render :edit }
        format.json { render json: @model_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /model_votes/1
  # DELETE /model_votes/1.json
  def destroy
    @model_vote.destroy
    respond_to do |format|
      format.html { redirect_to model_votes_url, notice: 'Model vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model_vote
      @model_vote = ModelVote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def model_vote_params
      params.require(:model_vote).permit(:model_id, :user_id)
    end
end
