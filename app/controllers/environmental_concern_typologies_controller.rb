class EnvironmentalConcernTypologiesController < ApplicationController
  before_action :set_environmental_concern_typology, only: [:show, :edit, :update, :destroy]

  # GET /environmental_concern_typologies
  # GET /environmental_concern_typologies.json
  def index
    @environmental_concern_typologies = EnvironmentalConcernTypology.all
  end

  # GET /environmental_concern_typologies/1
  # GET /environmental_concern_typologies/1.json
  def show
  end

  # GET /environmental_concern_typologies/new
  def new
    @environmental_concern_typology = EnvironmentalConcernTypology.new
  end

  # GET /environmental_concern_typologies/1/edit
  def edit
  end

  # POST /environmental_concern_typologies
  # POST /environmental_concern_typologies.json
  def create
    @environmental_concern_typology = EnvironmentalConcernTypology.new(environmental_concern_typology_params)

    respond_to do |format|
      if @environmental_concern_typology.save
        format.html { redirect_to @environmental_concern_typology, notice: 'Environmental concern typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @environmental_concern_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @environmental_concern_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /environmental_concern_typologies/1
  # PATCH/PUT /environmental_concern_typologies/1.json
  def update
    respond_to do |format|
      if @environmental_concern_typology.update(environmental_concern_typology_params)
        format.html { redirect_to @environmental_concern_typology, notice: 'Environmental concern typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @environmental_concern_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /environmental_concern_typologies/1
  # DELETE /environmental_concern_typologies/1.json
  def destroy
    @environmental_concern_typology.destroy
    respond_to do |format|
      format.html { redirect_to environmental_concern_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_environmental_concern_typology
      @environmental_concern_typology = EnvironmentalConcernTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def environmental_concern_typology_params
      params.require(:environmental_concern_typology).permit(:name, :description)
    end
end
