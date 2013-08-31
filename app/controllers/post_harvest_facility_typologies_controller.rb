class PostHarvestFacilityTypologiesController < ApplicationController
  before_action :set_post_harvest_facility_typology, only: [:show, :edit, :update, :destroy]

  # GET /post_harvest_facility_typologies
  # GET /post_harvest_facility_typologies.json
  def index
    @post_harvest_facility_typologies = PostHarvestFacilityTypology.all
  end

  # GET /post_harvest_facility_typologies/1
  # GET /post_harvest_facility_typologies/1.json
  def show
  end

  # GET /post_harvest_facility_typologies/new
  def new
    @post_harvest_facility_typology = PostHarvestFacilityTypology.new
  end

  # GET /post_harvest_facility_typologies/1/edit
  def edit
  end

  # POST /post_harvest_facility_typologies
  # POST /post_harvest_facility_typologies.json
  def create
    @post_harvest_facility_typology = PostHarvestFacilityTypology.new(post_harvest_facility_typology_params)

    respond_to do |format|
      if @post_harvest_facility_typology.save
        format.html { redirect_to @post_harvest_facility_typology, notice: 'Post harvest facility typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @post_harvest_facility_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @post_harvest_facility_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_harvest_facility_typologies/1
  # PATCH/PUT /post_harvest_facility_typologies/1.json
  def update
    respond_to do |format|
      if @post_harvest_facility_typology.update(post_harvest_facility_typology_params)
        format.html { redirect_to @post_harvest_facility_typology, notice: 'Post harvest facility typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post_harvest_facility_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_harvest_facility_typologies/1
  # DELETE /post_harvest_facility_typologies/1.json
  def destroy
    @post_harvest_facility_typology.destroy
    respond_to do |format|
      format.html { redirect_to post_harvest_facility_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_harvest_facility_typology
      @post_harvest_facility_typology = PostHarvestFacilityTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_harvest_facility_typology_params
      params.require(:post_harvest_facility_typology).permit(:name, :description)
    end
end
