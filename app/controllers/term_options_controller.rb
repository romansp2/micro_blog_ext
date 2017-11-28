class TermOptionsController < ApplicationController
  before_action :set_term_option, only: %i[show edit update destroy]

  # GET /term_options
  # GET /term_options.json
  def index
    @term_options = TermOption.all
  end

  # GET /term_options/1
  # GET /term_options/1.json
  def show; end

  # GET /term_options/new
  def new
    @term_option = TermOption.new
  end

  # GET /term_options/1/edit
  def edit; end

  # POST /term_options
  # POST /term_options.json
  def create
    @term_option = TermOption.new(term_option_params)

    respond_to do |format|
      if @term_option.save
        format.html { redirect_to @term_option, notice: 'Term option was successfully created.' }
        format.json { render :show, status: :created, location: @term_option }
      else
        format.html { render :new }
        format.json { render json: @term_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /term_options/1
  # PATCH/PUT /term_options/1.json
  def update
    respond_to do |format|
      if @term_option.update(term_option_params)
        format.html { redirect_to @term_option, notice: 'Term option was successfully updated.' }
        format.json { render :show, status: :ok, location: @term_option }
      else
        format.html { render :edit }
        format.json { render json: @term_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /term_options/1
  # DELETE /term_options/1.json
  def destroy
    @term_option.destroy
    respond_to do |format|
      format.html { redirect_to term_options_url, notice: 'Term option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_term_option
    @term_option = TermOption.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def term_option_params
    params.require(:term_option).permit(:terms_id, :option_key, :option_value)
  end
end
