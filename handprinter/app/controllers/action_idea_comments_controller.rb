class ActionIdeaCommentsController < ApplicationController
  before_action :set_action_idea_comment, only: [:show, :edit, :update, :destroy]

  # GET /action_idea_comments
  # GET /action_idea_comments.json
  def index
    @action_idea_comments = ActionIdeaComment.all
  end

  # GET /action_idea_comments/1
  # GET /action_idea_comments/1.json
  def show
  end

  # GET /action_idea_comments/new
  def new
    @action_idea_comment = ActionIdeaComment.new
  end

  # GET /action_idea_comments/1/edit
  def edit
  end

  # POST /action_idea_comments
  # POST /action_idea_comments.json
  def create
    @action_idea_comment = ActionIdeaComment.new(action_idea_comment_params)

    respond_to do |format|
      if @action_idea_comment.save
        format.html { redirect_to @action_idea_comment, notice: 'Action idea comment was successfully created.' }
        format.json { render :show, status: :created, location: @action_idea_comment }
      else
        format.html { render :new }
        format.json { render json: @action_idea_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /action_idea_comments/1
  # PATCH/PUT /action_idea_comments/1.json
  def update
    respond_to do |format|
      if @action_idea_comment.update(action_idea_comment_params)
        format.html { redirect_to @action_idea_comment, notice: 'Action idea comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @action_idea_comment }
      else
        format.html { render :edit }
        format.json { render json: @action_idea_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_idea_comments/1
  # DELETE /action_idea_comments/1.json
  def destroy
    @action_idea_comment.destroy
    respond_to do |format|
      format.html { redirect_to action_idea_comments_url, notice: 'Action idea comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_idea_comment
      @action_idea_comment = ActionIdeaComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def action_idea_comment_params
      params.require(:action_idea_comment).permit(:action_idea_id, :user_id, :date_created, :text)
    end
end
