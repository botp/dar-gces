class AgriBasedEnterpriseTypologiesController < ApplicationController
  before_action :set_agri_based_enterprise_typology, only: [:show, :edit, :update, :destroy]

  # GET /agri_based_enterprise_typologies
  # GET /agri_based_enterprise_typologies.json
  def index
    @agri_based_enterprise_typologies = AgriBasedEnterpriseTypology.all
  end

  # GET /agri_based_enterprise_typologies/1
  # GET /agri_based_enterprise_typologies/1.json
  def show
  end

  # GET /agri_based_enterprise_typologies/new
  def new
    @agri_based_enterprise_typology = AgriBasedEnterpriseTypology.new
  end

  # GET /agri_based_enterprise_typologies/1/edit
  def edit
  end

  # POST /agri_based_enterprise_typologies
  # POST /agri_based_enterprise_typologies.json
  def create
    @agri_based_enterprise_typology = AgriBasedEnterpriseTypology.new(agri_based_enterprise_typology_params)

    respond_to do |format|
      if @agri_based_enterprise_typology.save
        format.html { redirect_to @agri_based_enterprise_typology, notice: 'Agri based enterprise typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @agri_based_enterprise_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @agri_based_enterprise_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agri_based_enterprise_typologies/1
  # PATCH/PUT /agri_based_enterprise_typologies/1.json
  def update
    respond_to do |format|
      if @agri_based_enterprise_typology.update(agri_based_enterprise_typology_params)
        format.html { redirect_to @agri_based_enterprise_typology, notice: 'Agri based enterprise typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @agri_based_enterprise_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agri_based_enterprise_typologies/1
  # DELETE /agri_based_enterprise_typologies/1.json
  def destroy
    @agri_based_enterprise_typology.destroy
    respond_to do |format|
      format.html { redirect_to agri_based_enterprise_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agri_based_enterprise_typology
      @agri_based_enterprise_typology = AgriBasedEnterpriseTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agri_based_enterprise_typology_params
      params.require(:agri_based_enterprise_typology).permit(:name, :description)
    end
end
