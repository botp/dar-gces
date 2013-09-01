class FarmPracticeTypologiesController < ApplicationController
  before_action :set_farm_practice_typology, only: [:show, :edit, :update, :destroy]

  # GET /farm_practice_typologies
  # GET /farm_practice_typologies.json
  def index
    @farm_practice_typologies = FarmPracticeTypology.all
  end

  # GET /farm_practice_typologies/1
  # GET /farm_practice_typologies/1.json
  def show
  end

  # GET /farm_practice_typologies/new
  def new
    @farm_practice_typology = FarmPracticeTypology.new
  end

  # GET /farm_practice_typologies/1/edit
  def edit
  end

  # POST /farm_practice_typologies
  # POST /farm_practice_typologies.json
  def create
    @farm_practice_typology = FarmPracticeTypology.new(farm_practice_typology_params)

    respond_to do |format|
      if @farm_practice_typology.save
        format.html { redirect_to @farm_practice_typology, notice: 'Farm practice typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @farm_practice_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @farm_practice_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /farm_practice_typologies/1
  # PATCH/PUT /farm_practice_typologies/1.json
  def update
    respond_to do |format|
      if @farm_practice_typology.update(farm_practice_typology_params)
        format.html { redirect_to @farm_practice_typology, notice: 'Farm practice typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @farm_practice_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farm_practice_typologies/1
  # DELETE /farm_practice_typologies/1.json
  def destroy
    @farm_practice_typology.destroy
    respond_to do |format|
      format.html { redirect_to farm_practice_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farm_practice_typology
      @farm_practice_typology = FarmPracticeTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def farm_practice_typology_params
      params.require(:farm_practice_typology).permit(:name, :description)
    end
end
