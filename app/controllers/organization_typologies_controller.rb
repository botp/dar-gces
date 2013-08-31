class OrganizationTypologiesController < ApplicationController
  before_action :set_organization_typology, only: [:show, :edit, :update, :destroy]

  # GET /organization_typologies
  # GET /organization_typologies.json
  def index
    @organization_typologies = OrganizationTypology.all
  end

  # GET /organization_typologies/1
  # GET /organization_typologies/1.json
  def show
  end

  # GET /organization_typologies/new
  def new
    @organization_typology = OrganizationTypology.new
  end

  # GET /organization_typologies/1/edit
  def edit
  end

  # POST /organization_typologies
  # POST /organization_typologies.json
  def create
    @organization_typology = OrganizationTypology.new(organization_typology_params)

    respond_to do |format|
      if @organization_typology.save
        format.html { redirect_to @organization_typology, notice: 'Organization typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @organization_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @organization_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization_typologies/1
  # PATCH/PUT /organization_typologies/1.json
  def update
    respond_to do |format|
      if @organization_typology.update(organization_typology_params)
        format.html { redirect_to @organization_typology, notice: 'Organization typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @organization_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_typologies/1
  # DELETE /organization_typologies/1.json
  def destroy
    @organization_typology.destroy
    respond_to do |format|
      format.html { redirect_to organization_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_typology
      @organization_typology = OrganizationTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_typology_params
      params.require(:organization_typology).permit(:name, :description)
    end
end
