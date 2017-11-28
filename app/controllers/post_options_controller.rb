class PostOptionsController < ApplicationController
  before_action :set_post_option, only: %i[show edit update destroy]

  # GET /post_options
  # GET /post_options.json
  def index
    @post_options = PostOption.all
  end

  # GET /post_options/1
  # GET /post_options/1.json
  def show; end

  # GET /post_options/new
  def new
    @post_option = PostOption.new
  end

  # GET /post_options/1/edit
  def edit; end

  # POST /post_options
  # POST /post_options.json
  def create
    @post_option = PostOption.new(post_option_params)

    respond_to do |format|
      if @post_option.save
        format.html { redirect_to @post_option, notice: 'Post option was successfully created.' }
        format.json { render :show, status: :created, location: @post_option }
      else
        format.html { render :new }
        format.json { render json: @post_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_options/1
  # PATCH/PUT /post_options/1.json
  def update
    respond_to do |format|
      if @post_option.update(post_option_params)
        format.html { redirect_to @post_option, notice: 'Post option was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_option }
      else
        format.html { render :edit }
        format.json { render json: @post_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_options/1
  # DELETE /post_options/1.json
  def destroy
    @post_option.destroy
    respond_to do |format|
      format.html { redirect_to post_options_url, notice: 'Post option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post_option
    @post_option = PostOption.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_option_params
    params.require(:post_option).permit(:posts_id, :option_key, :option_value)
  end
end
