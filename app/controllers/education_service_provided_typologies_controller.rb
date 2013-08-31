class EducationServiceProvidedTypologiesController < ApplicationController
  before_action :set_education_service_provided_typology, only: [:show, :edit, :update, :destroy]

  # GET /education_service_provided_typologies
  # GET /education_service_provided_typologies.json
  def index
    @education_service_provided_typologies = EducationServiceProvidedTypology.all
  end

  # GET /education_service_provided_typologies/1
  # GET /education_service_provided_typologies/1.json
  def show
  end

  # GET /education_service_provided_typologies/new
  def new
    @education_service_provided_typology = EducationServiceProvidedTypology.new
  end

  # GET /education_service_provided_typologies/1/edit
  def edit
  end

  # POST /education_service_provided_typologies
  # POST /education_service_provided_typologies.json
  def create
    @education_service_provided_typology = EducationServiceProvidedTypology.new(education_service_provided_typology_params)

    respond_to do |format|
      if @education_service_provided_typology.save
        format.html { redirect_to @education_service_provided_typology, notice: 'Education service provided typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @education_service_provided_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @education_service_provided_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /education_service_provided_typologies/1
  # PATCH/PUT /education_service_provided_typologies/1.json
  def update
    respond_to do |format|
      if @education_service_provided_typology.update(education_service_provided_typology_params)
        format.html { redirect_to @education_service_provided_typology, notice: 'Education service provided typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @education_service_provided_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /education_service_provided_typologies/1
  # DELETE /education_service_provided_typologies/1.json
  def destroy
    @education_service_provided_typology.destroy
    respond_to do |format|
      format.html { redirect_to education_service_provided_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education_service_provided_typology
      @education_service_provided_typology = EducationServiceProvidedTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def education_service_provided_typology_params
      params.require(:education_service_provided_typology).permit(:name, :description)
    end
end
