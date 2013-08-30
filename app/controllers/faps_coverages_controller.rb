class FapsCoveragesController < ApplicationController
  before_action :set_faps_coverage, only: [:show, :edit, :update, :destroy]

  # GET /faps_coverages
  # GET /faps_coverages.json
  def index
    @faps_coverages = FapsCoverage.all
  end

  # GET /faps_coverages/1
  # GET /faps_coverages/1.json
  def show
  end

  # GET /faps_coverages/new
  def new
    @faps_coverage = FapsCoverage.new
  end

  # GET /faps_coverages/1/edit
  def edit
  end

  # POST /faps_coverages
  # POST /faps_coverages.json
  def create
    @faps_coverage = FapsCoverage.new(faps_coverage_params)

    respond_to do |format|
      if @faps_coverage.save
        format.html { redirect_to @faps_coverage, notice: 'Faps coverage was successfully created.' }
        format.json { render action: 'show', status: :created, location: @faps_coverage }
      else
        format.html { render action: 'new' }
        format.json { render json: @faps_coverage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faps_coverages/1
  # PATCH/PUT /faps_coverages/1.json
  def update
    respond_to do |format|
      if @faps_coverage.update(faps_coverage_params)
        format.html { redirect_to @faps_coverage, notice: 'Faps coverage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @faps_coverage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faps_coverages/1
  # DELETE /faps_coverages/1.json
  def destroy
    @faps_coverage.destroy
    respond_to do |format|
      format.html { redirect_to faps_coverages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faps_coverage
      @faps_coverage = FapsCoverage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faps_coverage_params
      params.require(:faps_coverage).permit(:name, :description)
    end
end
