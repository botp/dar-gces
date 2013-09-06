class PostharvestEquipmentAndMachineryTypologiesController < ApplicationController
  before_action :set_postharvest_equipment_and_machinery_typology, only: [:show, :edit, :update, :destroy]

  # GET /postharvest_equipment_and_machinery_typologies
  # GET /postharvest_equipment_and_machinery_typologies.json
  def index
    @postharvest_equipment_and_machinery_typologies = PostharvestEquipmentAndMachineryTypology.all
  end

  # GET /postharvest_equipment_and_machinery_typologies/1
  # GET /postharvest_equipment_and_machinery_typologies/1.json
  def show
  end

  # GET /postharvest_equipment_and_machinery_typologies/new
  def new
    @postharvest_equipment_and_machinery_typology = PostharvestEquipmentAndMachineryTypology.new
  end

  # GET /postharvest_equipment_and_machinery_typologies/1/edit
  def edit
  end

  # POST /postharvest_equipment_and_machinery_typologies
  # POST /postharvest_equipment_and_machinery_typologies.json
  def create
    @postharvest_equipment_and_machinery_typology = PostharvestEquipmentAndMachineryTypology.new(postharvest_equipment_and_machinery_typology_params)

    respond_to do |format|
      if @postharvest_equipment_and_machinery_typology.save
        format.html { redirect_to @postharvest_equipment_and_machinery_typology, notice: 'Postharvest equipment and machinery typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @postharvest_equipment_and_machinery_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @postharvest_equipment_and_machinery_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postharvest_equipment_and_machinery_typologies/1
  # PATCH/PUT /postharvest_equipment_and_machinery_typologies/1.json
  def update
    respond_to do |format|
      if @postharvest_equipment_and_machinery_typology.update(postharvest_equipment_and_machinery_typology_params)
        format.html { redirect_to @postharvest_equipment_and_machinery_typology, notice: 'Postharvest equipment and machinery typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @postharvest_equipment_and_machinery_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postharvest_equipment_and_machinery_typologies/1
  # DELETE /postharvest_equipment_and_machinery_typologies/1.json
  def destroy
    @postharvest_equipment_and_machinery_typology.destroy
    respond_to do |format|
      format.html { redirect_to postharvest_equipment_and_machinery_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postharvest_equipment_and_machinery_typology
      @postharvest_equipment_and_machinery_typology = PostharvestEquipmentAndMachineryTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postharvest_equipment_and_machinery_typology_params
      params.require(:postharvest_equipment_and_machinery_typology).permit(:name, :description)
    end
end
