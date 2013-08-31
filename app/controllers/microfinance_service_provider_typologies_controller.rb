class MicrofinanceServiceProviderTypologiesController < ApplicationController
  before_action :set_microfinance_service_provider_typology, only: [:show, :edit, :update, :destroy]

  # GET /microfinance_service_provider_typologies
  # GET /microfinance_service_provider_typologies.json
  def index
    @microfinance_service_provider_typologies = MicrofinanceServiceProviderTypology.all
  end

  # GET /microfinance_service_provider_typologies/1
  # GET /microfinance_service_provider_typologies/1.json
  def show
  end

  # GET /microfinance_service_provider_typologies/new
  def new
    @microfinance_service_provider_typology = MicrofinanceServiceProviderTypology.new
  end

  # GET /microfinance_service_provider_typologies/1/edit
  def edit
  end

  # POST /microfinance_service_provider_typologies
  # POST /microfinance_service_provider_typologies.json
  def create
    @microfinance_service_provider_typology = MicrofinanceServiceProviderTypology.new(microfinance_service_provider_typology_params)

    respond_to do |format|
      if @microfinance_service_provider_typology.save
        format.html { redirect_to @microfinance_service_provider_typology, notice: 'Microfinance service provider typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @microfinance_service_provider_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @microfinance_service_provider_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microfinance_service_provider_typologies/1
  # PATCH/PUT /microfinance_service_provider_typologies/1.json
  def update
    respond_to do |format|
      if @microfinance_service_provider_typology.update(microfinance_service_provider_typology_params)
        format.html { redirect_to @microfinance_service_provider_typology, notice: 'Microfinance service provider typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @microfinance_service_provider_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microfinance_service_provider_typologies/1
  # DELETE /microfinance_service_provider_typologies/1.json
  def destroy
    @microfinance_service_provider_typology.destroy
    respond_to do |format|
      format.html { redirect_to microfinance_service_provider_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microfinance_service_provider_typology
      @microfinance_service_provider_typology = MicrofinanceServiceProviderTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microfinance_service_provider_typology_params
      params.require(:microfinance_service_provider_typology).permit(:name, :description)
    end
end
