class BridgeProjectTypologiesController < ApplicationController
  before_action :set_bridge_project_typology, only: [:show, :edit, :update, :destroy]

  # GET /bridge_project_typologies
  # GET /bridge_project_typologies.json
  def index
    @bridge_project_typologies = BridgeProjectTypology.all
  end

  # GET /bridge_project_typologies/1
  # GET /bridge_project_typologies/1.json
  def show
  end

  # GET /bridge_project_typologies/new
  def new
    @bridge_project_typology = BridgeProjectTypology.new
  end

  # GET /bridge_project_typologies/1/edit
  def edit
  end

  # POST /bridge_project_typologies
  # POST /bridge_project_typologies.json
  def create
    @bridge_project_typology = BridgeProjectTypology.new(bridge_project_typology_params)

    respond_to do |format|
      if @bridge_project_typology.save
        format.html { redirect_to @bridge_project_typology, notice: 'Bridge project typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bridge_project_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @bridge_project_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bridge_project_typologies/1
  # PATCH/PUT /bridge_project_typologies/1.json
  def update
    respond_to do |format|
      if @bridge_project_typology.update(bridge_project_typology_params)
        format.html { redirect_to @bridge_project_typology, notice: 'Bridge project typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bridge_project_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bridge_project_typologies/1
  # DELETE /bridge_project_typologies/1.json
  def destroy
    @bridge_project_typology.destroy
    respond_to do |format|
      format.html { redirect_to bridge_project_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bridge_project_typology
      @bridge_project_typology = BridgeProjectTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bridge_project_typology_params
      params.require(:bridge_project_typology).permit(:name, :description)
    end
end
