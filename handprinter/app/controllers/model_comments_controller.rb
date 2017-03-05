class ModelCommentsController < ApplicationController
  before_action :set_model_comment, only: [:show, :edit, :update, :destroy]

  # GET /model_comments
  # GET /model_comments.json
  def index
    @model_comments = ModelComment.all
  end

  # GET /model_comments/1
  # GET /model_comments/1.json
  def show
  end

  # GET /model_comments/new
  def new
    @model_comment = ModelComment.new
  end

  # GET /model_comments/1/edit
  def edit
  end

  # POST /model_comments
  # POST /model_comments.json
  def create
    @model_comment = ModelComment.new(model_comment_params)

    respond_to do |format|
      if @model_comment.save
        format.html { redirect_to @model_comment, notice: 'Model comment was successfully created.' }
        format.json { render :show, status: :created, location: @model_comment }
      else
        format.html { render :new }
        format.json { render json: @model_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /model_comments/1
  # PATCH/PUT /model_comments/1.json
  def update
    respond_to do |format|
      if @model_comment.update(model_comment_params)
        format.html { redirect_to @model_comment, notice: 'Model comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @model_comment }
      else
        format.html { render :edit }
        format.json { render json: @model_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /model_comments/1
  # DELETE /model_comments/1.json
  def destroy
    @model_comment.destroy
    respond_to do |format|
      format.html { redirect_to model_comments_url, notice: 'Model comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model_comment
      @model_comment = ModelComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def model_comment_params
      params.require(:model_comment).permit(:model_id, :user_id, :date_created, :text)
    end
end
