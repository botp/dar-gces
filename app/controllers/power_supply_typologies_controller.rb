class PowerSupplyTypologiesController < ApplicationController
  before_action :set_power_supply_typology, only: [:show, :edit, :update, :destroy]

  # GET /power_supply_typologies
  # GET /power_supply_typologies.json
  def index
    @power_supply_typologies = PowerSupplyTypology.all
  end

  # GET /power_supply_typologies/1
  # GET /power_supply_typologies/1.json
  def show
  end

  # GET /power_supply_typologies/new
  def new
    @power_supply_typology = PowerSupplyTypology.new
  end

  # GET /power_supply_typologies/1/edit
  def edit
  end

  # POST /power_supply_typologies
  # POST /power_supply_typologies.json
  def create
    @power_supply_typology = PowerSupplyTypology.new(power_supply_typology_params)

    respond_to do |format|
      if @power_supply_typology.save
        format.html { redirect_to @power_supply_typology, notice: 'Power supply typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @power_supply_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @power_supply_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /power_supply_typologies/1
  # PATCH/PUT /power_supply_typologies/1.json
  def update
    respond_to do |format|
      if @power_supply_typology.update(power_supply_typology_params)
        format.html { redirect_to @power_supply_typology, notice: 'Power supply typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @power_supply_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /power_supply_typologies/1
  # DELETE /power_supply_typologies/1.json
  def destroy
    @power_supply_typology.destroy
    respond_to do |format|
      format.html { redirect_to power_supply_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_power_supply_typology
      @power_supply_typology = PowerSupplyTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def power_supply_typology_params
      params.require(:power_supply_typology).permit(:name, :description)
    end
end
