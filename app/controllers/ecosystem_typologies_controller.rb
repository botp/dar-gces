class EcosystemTypologiesController < ApplicationController
  before_action :set_ecosystem_typology, only: [:show, :edit, :update, :destroy]

  # GET /ecosystem_typologies
  # GET /ecosystem_typologies.json
  def index
    @ecosystem_typologies = EcosystemTypology.all
  end

  # GET /ecosystem_typologies/1
  # GET /ecosystem_typologies/1.json
  def show
  end

  # GET /ecosystem_typologies/new
  def new
    @ecosystem_typology = EcosystemTypology.new
  end

  # GET /ecosystem_typologies/1/edit
  def edit
  end

  # POST /ecosystem_typologies
  # POST /ecosystem_typologies.json
  def create
    @ecosystem_typology = EcosystemTypology.new(ecosystem_typology_params)

    respond_to do |format|
      if @ecosystem_typology.save
        format.html { redirect_to @ecosystem_typology, notice: 'Ecosystem typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ecosystem_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @ecosystem_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ecosystem_typologies/1
  # PATCH/PUT /ecosystem_typologies/1.json
  def update
    respond_to do |format|
      if @ecosystem_typology.update(ecosystem_typology_params)
        format.html { redirect_to @ecosystem_typology, notice: 'Ecosystem typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ecosystem_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ecosystem_typologies/1
  # DELETE /ecosystem_typologies/1.json
  def destroy
    @ecosystem_typology.destroy
    respond_to do |format|
      format.html { redirect_to ecosystem_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ecosystem_typology
      @ecosystem_typology = EcosystemTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ecosystem_typology_params
      params.require(:ecosystem_typology).permit(:name, :description)
    end
end
