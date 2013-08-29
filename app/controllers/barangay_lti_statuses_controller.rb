class BarangayLtiStatusesController < ApplicationController
  before_action :set_barangay_lti_status, only: [:show, :edit, :update, :destroy]

  # GET /barangay_lti_statuses
  # GET /barangay_lti_statuses.json
  def index
    @barangay_lti_statuses = BarangayLtiStatus.all
  end

  # GET /barangay_lti_statuses/1
  # GET /barangay_lti_statuses/1.json
  def show
  end

  # GET /barangay_lti_statuses/new
  def new
    @barangay_lti_status = BarangayLtiStatus.new
  end

  # GET /barangay_lti_statuses/1/edit
  def edit
  end

  # POST /barangay_lti_statuses
  # POST /barangay_lti_statuses.json
  def create
    @barangay_lti_status = BarangayLtiStatus.new(barangay_lti_status_params)

    respond_to do |format|
      if @barangay_lti_status.save
        format.html { redirect_to @barangay_lti_status, notice: 'Barangay lti status was successfully created.' }
        format.json { render action: 'show', status: :created, location: @barangay_lti_status }
      else
        format.html { render action: 'new' }
        format.json { render json: @barangay_lti_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barangay_lti_statuses/1
  # PATCH/PUT /barangay_lti_statuses/1.json
  def update
    respond_to do |format|
      if @barangay_lti_status.update(barangay_lti_status_params)
        format.html { redirect_to @barangay_lti_status, notice: 'Barangay lti status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @barangay_lti_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barangay_lti_statuses/1
  # DELETE /barangay_lti_statuses/1.json
  def destroy
    @barangay_lti_status.destroy
    respond_to do |format|
      format.html { redirect_to barangay_lti_statuses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barangay_lti_status
      @barangay_lti_status = BarangayLtiStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barangay_lti_status_params
      params.require(:barangay_lti_status).permit(:barangay_id, :tag, :name, :description, :date_confirmed, :lad_scope, :working_scope, :vos, :ca, :vlt, :gol, :remarks, :lad_male_arb, :lad_female_arb, :leasehold_scope, :leasehold_accomplishment, :remarks2, :lh_male_arb, :lh_female_arb)
    end
end
