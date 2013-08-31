class WaterSystemTypologiesController < ApplicationController
  before_action :set_water_system_typology, only: [:show, :edit, :update, :destroy]

  # GET /water_system_typologies
  # GET /water_system_typologies.json
  def index
    @water_system_typologies = WaterSystemTypology.all
  end

  # GET /water_system_typologies/1
  # GET /water_system_typologies/1.json
  def show
  end

  # GET /water_system_typologies/new
  def new
    @water_system_typology = WaterSystemTypology.new
  end

  # GET /water_system_typologies/1/edit
  def edit
  end

  # POST /water_system_typologies
  # POST /water_system_typologies.json
  def create
    @water_system_typology = WaterSystemTypology.new(water_system_typology_params)

    respond_to do |format|
      if @water_system_typology.save
        format.html { redirect_to @water_system_typology, notice: 'Water system typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @water_system_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @water_system_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /water_system_typologies/1
  # PATCH/PUT /water_system_typologies/1.json
  def update
    respond_to do |format|
      if @water_system_typology.update(water_system_typology_params)
        format.html { redirect_to @water_system_typology, notice: 'Water system typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @water_system_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /water_system_typologies/1
  # DELETE /water_system_typologies/1.json
  def destroy
    @water_system_typology.destroy
    respond_to do |format|
      format.html { redirect_to water_system_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_system_typology
      @water_system_typology = WaterSystemTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_system_typology_params
      params.require(:water_system_typology).permit(:name, :description)
    end
end
