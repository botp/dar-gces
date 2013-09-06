class PostharvestStructureAndFacilityTypologiesController < ApplicationController
  before_action :set_postharvest_structure_and_facility_typology, only: [:show, :edit, :update, :destroy]

  # GET /postharvest_structure_and_facility_typologies
  # GET /postharvest_structure_and_facility_typologies.json
  def index
    @postharvest_structure_and_facility_typologies = PostharvestStructureAndFacilityTypology.all
  end

  # GET /postharvest_structure_and_facility_typologies/1
  # GET /postharvest_structure_and_facility_typologies/1.json
  def show
  end

  # GET /postharvest_structure_and_facility_typologies/new
  def new
    @postharvest_structure_and_facility_typology = PostharvestStructureAndFacilityTypology.new
  end

  # GET /postharvest_structure_and_facility_typologies/1/edit
  def edit
  end

  # POST /postharvest_structure_and_facility_typologies
  # POST /postharvest_structure_and_facility_typologies.json
  def create
    @postharvest_structure_and_facility_typology = PostharvestStructureAndFacilityTypology.new(postharvest_structure_and_facility_typology_params)

    respond_to do |format|
      if @postharvest_structure_and_facility_typology.save
        format.html { redirect_to @postharvest_structure_and_facility_typology, notice: 'Postharvest structure and facility typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @postharvest_structure_and_facility_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @postharvest_structure_and_facility_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postharvest_structure_and_facility_typologies/1
  # PATCH/PUT /postharvest_structure_and_facility_typologies/1.json
  def update
    respond_to do |format|
      if @postharvest_structure_and_facility_typology.update(postharvest_structure_and_facility_typology_params)
        format.html { redirect_to @postharvest_structure_and_facility_typology, notice: 'Postharvest structure and facility typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @postharvest_structure_and_facility_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postharvest_structure_and_facility_typologies/1
  # DELETE /postharvest_structure_and_facility_typologies/1.json
  def destroy
    @postharvest_structure_and_facility_typology.destroy
    respond_to do |format|
      format.html { redirect_to postharvest_structure_and_facility_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postharvest_structure_and_facility_typology
      @postharvest_structure_and_facility_typology = PostharvestStructureAndFacilityTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postharvest_structure_and_facility_typology_params
      params.require(:postharvest_structure_and_facility_typology).permit(:name, :description)
    end
end
