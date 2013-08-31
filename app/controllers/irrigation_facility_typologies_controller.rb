class IrrigationFacilityTypologiesController < ApplicationController
  before_action :set_irrigation_facility_typology, only: [:show, :edit, :update, :destroy]

  # GET /irrigation_facility_typologies
  # GET /irrigation_facility_typologies.json
  def index
    @irrigation_facility_typologies = IrrigationFacilityTypology.all
  end

  # GET /irrigation_facility_typologies/1
  # GET /irrigation_facility_typologies/1.json
  def show
  end

  # GET /irrigation_facility_typologies/new
  def new
    @irrigation_facility_typology = IrrigationFacilityTypology.new
  end

  # GET /irrigation_facility_typologies/1/edit
  def edit
  end

  # POST /irrigation_facility_typologies
  # POST /irrigation_facility_typologies.json
  def create
    @irrigation_facility_typology = IrrigationFacilityTypology.new(irrigation_facility_typology_params)

    respond_to do |format|
      if @irrigation_facility_typology.save
        format.html { redirect_to @irrigation_facility_typology, notice: 'Irrigation facility typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @irrigation_facility_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @irrigation_facility_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /irrigation_facility_typologies/1
  # PATCH/PUT /irrigation_facility_typologies/1.json
  def update
    respond_to do |format|
      if @irrigation_facility_typology.update(irrigation_facility_typology_params)
        format.html { redirect_to @irrigation_facility_typology, notice: 'Irrigation facility typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @irrigation_facility_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /irrigation_facility_typologies/1
  # DELETE /irrigation_facility_typologies/1.json
  def destroy
    @irrigation_facility_typology.destroy
    respond_to do |format|
      format.html { redirect_to irrigation_facility_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_irrigation_facility_typology
      @irrigation_facility_typology = IrrigationFacilityTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def irrigation_facility_typology_params
      params.require(:irrigation_facility_typology).permit(:name, :description)
    end
end
