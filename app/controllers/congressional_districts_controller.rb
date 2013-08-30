class CongressionalDistrictsController < ApplicationController
  before_action :set_congressional_district, only: [:show, :edit, :update, :destroy]

  # GET /congressional_districts
  # GET /congressional_districts.json
  def index
    @congressional_districts = CongressionalDistrict.all
  end

  # GET /congressional_districts/1
  # GET /congressional_districts/1.json
  def show
  end

  # GET /congressional_districts/new
  def new
    @congressional_district = CongressionalDistrict.new
  end

  # GET /congressional_districts/1/edit
  def edit
  end

  # POST /congressional_districts
  # POST /congressional_districts.json
  def create
    @congressional_district = CongressionalDistrict.new(congressional_district_params)

    respond_to do |format|
      if @congressional_district.save
        format.html { redirect_to @congressional_district, notice: 'Congressional district was successfully created.' }
        format.json { render action: 'show', status: :created, location: @congressional_district }
      else
        format.html { render action: 'new' }
        format.json { render json: @congressional_district.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /congressional_districts/1
  # PATCH/PUT /congressional_districts/1.json
  def update
    respond_to do |format|
      if @congressional_district.update(congressional_district_params)
        format.html { redirect_to @congressional_district, notice: 'Congressional district was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @congressional_district.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /congressional_districts/1
  # DELETE /congressional_districts/1.json
  def destroy
    @congressional_district.destroy
    respond_to do |format|
      format.html { redirect_to congressional_districts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_congressional_district
      @congressional_district = CongressionalDistrict.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def congressional_district_params
      params.require(:congressional_district).permit(:name)
    end
end
