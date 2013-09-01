class NaturalResourceTypologiesController < ApplicationController
  before_action :set_natural_resource_typology, only: [:show, :edit, :update, :destroy]

  # GET /natural_resource_typologies
  # GET /natural_resource_typologies.json
  def index
    @natural_resource_typologies = NaturalResourceTypology.all
  end

  # GET /natural_resource_typologies/1
  # GET /natural_resource_typologies/1.json
  def show
  end

  # GET /natural_resource_typologies/new
  def new
    @natural_resource_typology = NaturalResourceTypology.new
  end

  # GET /natural_resource_typologies/1/edit
  def edit
  end

  # POST /natural_resource_typologies
  # POST /natural_resource_typologies.json
  def create
    @natural_resource_typology = NaturalResourceTypology.new(natural_resource_typology_params)

    respond_to do |format|
      if @natural_resource_typology.save
        format.html { redirect_to @natural_resource_typology, notice: 'Natural resource typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @natural_resource_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @natural_resource_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /natural_resource_typologies/1
  # PATCH/PUT /natural_resource_typologies/1.json
  def update
    respond_to do |format|
      if @natural_resource_typology.update(natural_resource_typology_params)
        format.html { redirect_to @natural_resource_typology, notice: 'Natural resource typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @natural_resource_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /natural_resource_typologies/1
  # DELETE /natural_resource_typologies/1.json
  def destroy
    @natural_resource_typology.destroy
    respond_to do |format|
      format.html { redirect_to natural_resource_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_natural_resource_typology
      @natural_resource_typology = NaturalResourceTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def natural_resource_typology_params
      params.require(:natural_resource_typology).permit(:name, :description)
    end
end
