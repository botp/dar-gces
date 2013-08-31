class FmrProjectTypologiesController < ApplicationController
  before_action :set_fmr_project_typology, only: [:show, :edit, :update, :destroy]

  # GET /fmr_project_typologies
  # GET /fmr_project_typologies.json
  def index
    @fmr_project_typologies = FmrProjectTypology.all
  end

  # GET /fmr_project_typologies/1
  # GET /fmr_project_typologies/1.json
  def show
  end

  # GET /fmr_project_typologies/new
  def new
    @fmr_project_typology = FmrProjectTypology.new
  end

  # GET /fmr_project_typologies/1/edit
  def edit
  end

  # POST /fmr_project_typologies
  # POST /fmr_project_typologies.json
  def create
    @fmr_project_typology = FmrProjectTypology.new(fmr_project_typology_params)

    respond_to do |format|
      if @fmr_project_typology.save
        format.html { redirect_to @fmr_project_typology, notice: 'Fmr project typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fmr_project_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @fmr_project_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fmr_project_typologies/1
  # PATCH/PUT /fmr_project_typologies/1.json
  def update
    respond_to do |format|
      if @fmr_project_typology.update(fmr_project_typology_params)
        format.html { redirect_to @fmr_project_typology, notice: 'Fmr project typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fmr_project_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fmr_project_typologies/1
  # DELETE /fmr_project_typologies/1.json
  def destroy
    @fmr_project_typology.destroy
    respond_to do |format|
      format.html { redirect_to fmr_project_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fmr_project_typology
      @fmr_project_typology = FmrProjectTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fmr_project_typology_params
      params.require(:fmr_project_typology).permit(:name, :description)
    end
end
