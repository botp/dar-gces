class BarangayPopulationsController < ApplicationController
  before_action :set_barangay_population, only: [:show, :edit, :update, :destroy]

  # GET /barangay_populations
  # GET /barangay_populations.json
  def index
    @barangay_populations = BarangayPopulation.all
  end

  # GET /barangay_populations/1
  # GET /barangay_populations/1.json
  def show
  end

  # GET /barangay_populations/new
  def new
    @barangay_population = BarangayPopulation.new
  end

  # GET /barangay_populations/1/edit
  def edit
  end

  # POST /barangay_populations
  # POST /barangay_populations.json
  def create
    @barangay_population = BarangayPopulation.new(barangay_population_params)

    respond_to do |format|
      if @barangay_population.save
        format.html { redirect_to @barangay_population, notice: 'Barangay population was successfully created.' }
        format.json { render action: 'show', status: :created, location: @barangay_population }
      else
        format.html { render action: 'new' }
        format.json { render json: @barangay_population.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barangay_populations/1
  # PATCH/PUT /barangay_populations/1.json
  def update
    respond_to do |format|
      if @barangay_population.update(barangay_population_params)
        format.html { redirect_to @barangay_population, notice: 'Barangay population was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @barangay_population.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barangay_populations/1
  # DELETE /barangay_populations/1.json
  def destroy
    @barangay_population.destroy
    respond_to do |format|
      format.html { redirect_to barangay_populations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barangay_population
      @barangay_population = BarangayPopulation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barangay_population_params
      params.require(:barangay_population).permit(:tag, :barangay_id, :name, :description, :date_info_gathered, :arb_male, :arb_female, :non_arb_male, :non_arb_female, :arb_household, :non_arb_household)
    end
end
