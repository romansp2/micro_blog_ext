class CommentOptionsController < ApplicationController
  before_action :set_comment_option, only: %i[show edit update destroy]

  # GET /comment_options
  # GET /comment_options.json
  def index
    @comment_options = CommentOption.all
  end

  # GET /comment_options/1
  # GET /comment_options/1.json
  def show; end

  # GET /comment_options/new
  def new
    @comment_option = CommentOption.new
  end

  # GET /comment_options/1/edit
  def edit; end

  # POST /comment_options
  # POST /comment_options.json
  def create
    @comment_option = CommentOption.new(comment_option_params)

    respond_to do |format|
      if @comment_option.save
        format.html { redirect_to @comment_option, notice: 'Comment option was successfully created.' }
        format.json { render :show, status: :created, location: @comment_option }
      else
        format.html { render :new }
        format.json { render json: @comment_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_options/1
  # PATCH/PUT /comment_options/1.json
  def update
    respond_to do |format|
      if @comment_option.update(comment_option_params)
        format.html { redirect_to @comment_option, notice: 'Comment option was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment_option }
      else
        format.html { render :edit }
        format.json { render json: @comment_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_options/1
  # DELETE /comment_options/1.json
  def destroy
    @comment_option.destroy
    respond_to do |format|
      format.html { redirect_to comment_options_url, notice: 'Comment option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_comment_option
    @comment_option = CommentOption.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def comment_option_params
    params.require(:comment_option).permit(:comments_id, :option_key, :option_value)
  end
end
