class IrrigationProjectTypologiesController < ApplicationController
  before_action :set_irrigation_project_typology, only: [:show, :edit, :update, :destroy]

  # GET /irrigation_project_typologies
  # GET /irrigation_project_typologies.json
  def index
    @irrigation_project_typologies = IrrigationProjectTypology.all
  end

  # GET /irrigation_project_typologies/1
  # GET /irrigation_project_typologies/1.json
  def show
  end

  # GET /irrigation_project_typologies/new
  def new
    @irrigation_project_typology = IrrigationProjectTypology.new
  end

  # GET /irrigation_project_typologies/1/edit
  def edit
  end

  # POST /irrigation_project_typologies
  # POST /irrigation_project_typologies.json
  def create
    @irrigation_project_typology = IrrigationProjectTypology.new(irrigation_project_typology_params)

    respond_to do |format|
      if @irrigation_project_typology.save
        format.html { redirect_to @irrigation_project_typology, notice: 'Irrigation project typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @irrigation_project_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @irrigation_project_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /irrigation_project_typologies/1
  # PATCH/PUT /irrigation_project_typologies/1.json
  def update
    respond_to do |format|
      if @irrigation_project_typology.update(irrigation_project_typology_params)
        format.html { redirect_to @irrigation_project_typology, notice: 'Irrigation project typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @irrigation_project_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /irrigation_project_typologies/1
  # DELETE /irrigation_project_typologies/1.json
  def destroy
    @irrigation_project_typology.destroy
    respond_to do |format|
      format.html { redirect_to irrigation_project_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_irrigation_project_typology
      @irrigation_project_typology = IrrigationProjectTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def irrigation_project_typology_params
      params.require(:irrigation_project_typology).permit(:name, :description)
    end
end
