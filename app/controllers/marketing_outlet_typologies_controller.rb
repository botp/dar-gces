class MarketingOutletTypologiesController < ApplicationController
  before_action :set_marketing_outlet_typology, only: [:show, :edit, :update, :destroy]

  # GET /marketing_outlet_typologies
  # GET /marketing_outlet_typologies.json
  def index
    @marketing_outlet_typologies = MarketingOutletTypology.all
  end

  # GET /marketing_outlet_typologies/1
  # GET /marketing_outlet_typologies/1.json
  def show
  end

  # GET /marketing_outlet_typologies/new
  def new
    @marketing_outlet_typology = MarketingOutletTypology.new
  end

  # GET /marketing_outlet_typologies/1/edit
  def edit
  end

  # POST /marketing_outlet_typologies
  # POST /marketing_outlet_typologies.json
  def create
    @marketing_outlet_typology = MarketingOutletTypology.new(marketing_outlet_typology_params)

    respond_to do |format|
      if @marketing_outlet_typology.save
        format.html { redirect_to @marketing_outlet_typology, notice: 'Marketing outlet typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @marketing_outlet_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @marketing_outlet_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marketing_outlet_typologies/1
  # PATCH/PUT /marketing_outlet_typologies/1.json
  def update
    respond_to do |format|
      if @marketing_outlet_typology.update(marketing_outlet_typology_params)
        format.html { redirect_to @marketing_outlet_typology, notice: 'Marketing outlet typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @marketing_outlet_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marketing_outlet_typologies/1
  # DELETE /marketing_outlet_typologies/1.json
  def destroy
    @marketing_outlet_typology.destroy
    respond_to do |format|
      format.html { redirect_to marketing_outlet_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marketing_outlet_typology
      @marketing_outlet_typology = MarketingOutletTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marketing_outlet_typology_params
      params.require(:marketing_outlet_typology).permit(:name, :description)
    end
end
