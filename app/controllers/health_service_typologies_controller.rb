class HealthServiceTypologiesController < ApplicationController
  before_action :set_health_service_typology, only: [:show, :edit, :update, :destroy]

  # GET /health_service_typologies
  # GET /health_service_typologies.json
  def index
    @health_service_typologies = HealthServiceTypology.all
  end

  # GET /health_service_typologies/1
  # GET /health_service_typologies/1.json
  def show
  end

  # GET /health_service_typologies/new
  def new
    @health_service_typology = HealthServiceTypology.new
  end

  # GET /health_service_typologies/1/edit
  def edit
  end

  # POST /health_service_typologies
  # POST /health_service_typologies.json
  def create
    @health_service_typology = HealthServiceTypology.new(health_service_typology_params)

    respond_to do |format|
      if @health_service_typology.save
        format.html { redirect_to @health_service_typology, notice: 'Health service typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @health_service_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @health_service_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /health_service_typologies/1
  # PATCH/PUT /health_service_typologies/1.json
  def update
    respond_to do |format|
      if @health_service_typology.update(health_service_typology_params)
        format.html { redirect_to @health_service_typology, notice: 'Health service typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @health_service_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_service_typologies/1
  # DELETE /health_service_typologies/1.json
  def destroy
    @health_service_typology.destroy
    respond_to do |format|
      format.html { redirect_to health_service_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_service_typology
      @health_service_typology = HealthServiceTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def health_service_typology_params
      params.require(:health_service_typology).permit(:name, :description)
    end
end
