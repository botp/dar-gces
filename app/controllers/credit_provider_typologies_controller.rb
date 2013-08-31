class CreditProviderTypologiesController < ApplicationController
  before_action :set_credit_provider_typology, only: [:show, :edit, :update, :destroy]

  # GET /credit_provider_typologies
  # GET /credit_provider_typologies.json
  def index
    @credit_provider_typologies = CreditProviderTypology.all
  end

  # GET /credit_provider_typologies/1
  # GET /credit_provider_typologies/1.json
  def show
  end

  # GET /credit_provider_typologies/new
  def new
    @credit_provider_typology = CreditProviderTypology.new
  end

  # GET /credit_provider_typologies/1/edit
  def edit
  end

  # POST /credit_provider_typologies
  # POST /credit_provider_typologies.json
  def create
    @credit_provider_typology = CreditProviderTypology.new(credit_provider_typology_params)

    respond_to do |format|
      if @credit_provider_typology.save
        format.html { redirect_to @credit_provider_typology, notice: 'Credit provider typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @credit_provider_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @credit_provider_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /credit_provider_typologies/1
  # PATCH/PUT /credit_provider_typologies/1.json
  def update
    respond_to do |format|
      if @credit_provider_typology.update(credit_provider_typology_params)
        format.html { redirect_to @credit_provider_typology, notice: 'Credit provider typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @credit_provider_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /credit_provider_typologies/1
  # DELETE /credit_provider_typologies/1.json
  def destroy
    @credit_provider_typology.destroy
    respond_to do |format|
      format.html { redirect_to credit_provider_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credit_provider_typology
      @credit_provider_typology = CreditProviderTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def credit_provider_typology_params
      params.require(:credit_provider_typology).permit(:name, :description)
    end
end
