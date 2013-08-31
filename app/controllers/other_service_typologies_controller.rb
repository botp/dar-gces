class OtherServiceTypologiesController < ApplicationController
  before_action :set_other_service_typology, only: [:show, :edit, :update, :destroy]

  # GET /other_service_typologies
  # GET /other_service_typologies.json
  def index
    @other_service_typologies = OtherServiceTypology.all
  end

  # GET /other_service_typologies/1
  # GET /other_service_typologies/1.json
  def show
  end

  # GET /other_service_typologies/new
  def new
    @other_service_typology = OtherServiceTypology.new
  end

  # GET /other_service_typologies/1/edit
  def edit
  end

  # POST /other_service_typologies
  # POST /other_service_typologies.json
  def create
    @other_service_typology = OtherServiceTypology.new(other_service_typology_params)

    respond_to do |format|
      if @other_service_typology.save
        format.html { redirect_to @other_service_typology, notice: 'Other service typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @other_service_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @other_service_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /other_service_typologies/1
  # PATCH/PUT /other_service_typologies/1.json
  def update
    respond_to do |format|
      if @other_service_typology.update(other_service_typology_params)
        format.html { redirect_to @other_service_typology, notice: 'Other service typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @other_service_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /other_service_typologies/1
  # DELETE /other_service_typologies/1.json
  def destroy
    @other_service_typology.destroy
    respond_to do |format|
      format.html { redirect_to other_service_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_other_service_typology
      @other_service_typology = OtherServiceTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def other_service_typology_params
      params.require(:other_service_typology).permit(:name, :description)
    end
end
