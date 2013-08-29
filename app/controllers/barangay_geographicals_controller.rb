class BarangayGeographicalsController < ApplicationController
  before_action :set_barangay_geographical, only: [:show, :edit, :update, :destroy]

  # GET /barangay_geographicals
  # GET /barangay_geographicals.json
  def index
    @barangay_geographicals = BarangayGeographical.all
  end

  # GET /barangay_geographicals/1
  # GET /barangay_geographicals/1.json
  def show
  end

  # GET /barangay_geographicals/new
  def new
    @barangay_geographical = BarangayGeographical.new
  end

  # GET /barangay_geographicals/1/edit
  def edit
  end

  # POST /barangay_geographicals
  # POST /barangay_geographicals.json
  def create
    @barangay_geographical = BarangayGeographical.new(barangay_geographical_params)

    respond_to do |format|
      if @barangay_geographical.save
        format.html { redirect_to @barangay_geographical, notice: 'Barangay geographical was successfully created.' }
        format.json { render action: 'show', status: :created, location: @barangay_geographical }
      else
        format.html { render action: 'new' }
        format.json { render json: @barangay_geographical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barangay_geographicals/1
  # PATCH/PUT /barangay_geographicals/1.json
  def update
    respond_to do |format|
      if @barangay_geographical.update(barangay_geographical_params)
        format.html { redirect_to @barangay_geographical, notice: 'Barangay geographical was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @barangay_geographical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barangay_geographicals/1
  # DELETE /barangay_geographicals/1.json
  def destroy
    @barangay_geographical.destroy
    respond_to do |format|
      format.html { redirect_to barangay_geographicals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barangay_geographical
      @barangay_geographical = BarangayGeographical.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barangay_geographical_params
      params.require(:barangay_geographical).permit(:tag, :name, :description, :date_info_gathered, :land_area, :agricultural_area, :terrain, :ecosystem, :distance_from_town_proper, :means_of_transportation, :barangay_id)
    end
end
