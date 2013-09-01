class WomensOrganizationTypologiesController < ApplicationController
  before_action :set_womens_organization_typology, only: [:show, :edit, :update, :destroy]

  # GET /womens_organization_typologies
  # GET /womens_organization_typologies.json
  def index
    @womens_organization_typologies = WomensOrganizationTypology.all
  end

  # GET /womens_organization_typologies/1
  # GET /womens_organization_typologies/1.json
  def show
  end

  # GET /womens_organization_typologies/new
  def new
    @womens_organization_typology = WomensOrganizationTypology.new
  end

  # GET /womens_organization_typologies/1/edit
  def edit
  end

  # POST /womens_organization_typologies
  # POST /womens_organization_typologies.json
  def create
    @womens_organization_typology = WomensOrganizationTypology.new(womens_organization_typology_params)

    respond_to do |format|
      if @womens_organization_typology.save
        format.html { redirect_to @womens_organization_typology, notice: 'Womens organization typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @womens_organization_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @womens_organization_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /womens_organization_typologies/1
  # PATCH/PUT /womens_organization_typologies/1.json
  def update
    respond_to do |format|
      if @womens_organization_typology.update(womens_organization_typology_params)
        format.html { redirect_to @womens_organization_typology, notice: 'Womens organization typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @womens_organization_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /womens_organization_typologies/1
  # DELETE /womens_organization_typologies/1.json
  def destroy
    @womens_organization_typology.destroy
    respond_to do |format|
      format.html { redirect_to womens_organization_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_womens_organization_typology
      @womens_organization_typology = WomensOrganizationTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def womens_organization_typology_params
      params.require(:womens_organization_typology).permit(:name, :description)
    end
end
