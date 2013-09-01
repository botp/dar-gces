class WomensDeskServiceTypologiesController < ApplicationController
  before_action :set_womens_desk_service_typology, only: [:show, :edit, :update, :destroy]

  # GET /womens_desk_service_typologies
  # GET /womens_desk_service_typologies.json
  def index
    @womens_desk_service_typologies = WomensDeskServiceTypology.all
  end

  # GET /womens_desk_service_typologies/1
  # GET /womens_desk_service_typologies/1.json
  def show
  end

  # GET /womens_desk_service_typologies/new
  def new
    @womens_desk_service_typology = WomensDeskServiceTypology.new
  end

  # GET /womens_desk_service_typologies/1/edit
  def edit
  end

  # POST /womens_desk_service_typologies
  # POST /womens_desk_service_typologies.json
  def create
    @womens_desk_service_typology = WomensDeskServiceTypology.new(womens_desk_service_typology_params)

    respond_to do |format|
      if @womens_desk_service_typology.save
        format.html { redirect_to @womens_desk_service_typology, notice: 'Womens desk service typology was successfully created.' }
        format.json { render action: 'show', status: :created, location: @womens_desk_service_typology }
      else
        format.html { render action: 'new' }
        format.json { render json: @womens_desk_service_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /womens_desk_service_typologies/1
  # PATCH/PUT /womens_desk_service_typologies/1.json
  def update
    respond_to do |format|
      if @womens_desk_service_typology.update(womens_desk_service_typology_params)
        format.html { redirect_to @womens_desk_service_typology, notice: 'Womens desk service typology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @womens_desk_service_typology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /womens_desk_service_typologies/1
  # DELETE /womens_desk_service_typologies/1.json
  def destroy
    @womens_desk_service_typology.destroy
    respond_to do |format|
      format.html { redirect_to womens_desk_service_typologies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_womens_desk_service_typology
      @womens_desk_service_typology = WomensDeskServiceTypology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def womens_desk_service_typology_params
      params.require(:womens_desk_service_typology).permit(:name, :description)
    end
end
