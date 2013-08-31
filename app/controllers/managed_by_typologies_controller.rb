class ManagedByTypologiesController < ApplicationController
  before_action :set_managed_by_typology, only: [:show, :edit, :update, :destroy]

  # GET /managed_by_typologies
  # GET /managed_by_typologies.json
  def index
    @managed_by_typologies = ManagedByTypology.all
  end

  # GET /managed_by_typologies/1
  # GET /managed_by_typologies/1.json
  def show
  end

  # GET /managed_by_typologies/new
  def new
    @managed_by_typology = ManagedByTypology.new
  end

  # GET /managed_by_typologies/1/edit
  def edit
  end

  # POST /managed_by_typologies
  # POST /managed_by_typologies.json
  def create
    @managed_by_typology = ManagedByTypology.new(managed_by_typology_params)

    respond_to do |format|
      if @managed_by_typology.save
        format.html { redirect_to @managed_by_typology, notice: 'Managed by typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @managed_by_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @managed_by_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /managed_by_typologies/1
  # PATCH/PUT /managed_by_typologies/1.json
  def update
    respond_to do |format|
      if @managed_by_typology.update(managed_by_typology_params)
        format.html { redirect_to @managed_by_typology, notice: 'Managed by typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @managed_by_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /managed_by_typologies/1
  # DELETE /managed_by_typologies/1.json
  def destroy
    @managed_by_typology.destroy
    respond_to do |format|
      format.html { redirect_to managed_by_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_managed_by_typology
      @managed_by_typology = ManagedByTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def managed_by_typology_params
      params.require(:managed_by_typology).permit(:name, :description)
    end
end
