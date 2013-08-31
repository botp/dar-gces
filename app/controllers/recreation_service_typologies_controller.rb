class RecreationServiceTypologiesController < ApplicationController
  before_action :set_recreation_service_typology, only: [:show, :edit, :update, :destroy]

  # GET /recreation_service_typologies
  # GET /recreation_service_typologies.json
  def index
    @recreation_service_typologies = RecreationServiceTypology.all
  end

  # GET /recreation_service_typologies/1
  # GET /recreation_service_typologies/1.json
  def show
  end

  # GET /recreation_service_typologies/new
  def new
    @recreation_service_typology = RecreationServiceTypology.new
  end

  # GET /recreation_service_typologies/1/edit
  def edit
  end

  # POST /recreation_service_typologies
  # POST /recreation_service_typologies.json
  def create
    @recreation_service_typology = RecreationServiceTypology.new(recreation_service_typology_params)

    respond_to do |format|
      if @recreation_service_typology.save
        format.html { redirect_to @recreation_service_typology, notice: 'Recreation service typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @recreation_service_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @recreation_service_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recreation_service_typologies/1
  # PATCH/PUT /recreation_service_typologies/1.json
  def update
    respond_to do |format|
      if @recreation_service_typology.update(recreation_service_typology_params)
        format.html { redirect_to @recreation_service_typology, notice: 'Recreation service typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recreation_service_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recreation_service_typologies/1
  # DELETE /recreation_service_typologies/1.json
  def destroy
    @recreation_service_typology.destroy
    respond_to do |format|
      format.html { redirect_to recreation_service_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recreation_service_typology
      @recreation_service_typology = RecreationServiceTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recreation_service_typology_params
      params.require(:recreation_service_typology).permit(:name, :description)
    end
end
