class BarangayIrrigationProjectsController < ApplicationController
  before_action :set_barangay_irrigation_project, only: [:show, :edit, :update, :destroy]

  # GET /barangay_irrigation_projects
  # GET /barangay_irrigation_projects.json
  def index
    @barangay_irrigation_projects = BarangayIrrigationProject.all
  end

  # GET /barangay_irrigation_projects/1
  # GET /barangay_irrigation_projects/1.json
  def show
  end

  # GET /barangay_irrigation_projects/new
  def new
    @barangay_irrigation_project = BarangayIrrigationProject.new
  end

  # GET /barangay_irrigation_projects/1/edit
  def edit
  end

  # POST /barangay_irrigation_projects
  # POST /barangay_irrigation_projects.json
  def create
    @barangay_irrigation_project = BarangayIrrigationProject.new(barangay_irrigation_project_params)

    respond_to do |format|
      if @barangay_irrigation_project.save
        format.html { redirect_to @barangay_irrigation_project, notice: 'Barangay irrigation project was successfully created.' }
        format.json { render action: 'show', status: :created, location: @barangay_irrigation_project }
      else
        format.html { render action: 'new' }
        format.json { render json: @barangay_irrigation_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barangay_irrigation_projects/1
  # PATCH/PUT /barangay_irrigation_projects/1.json
  def update
    respond_to do |format|
      if @barangay_irrigation_project.update(barangay_irrigation_project_params)
        format.html { redirect_to @barangay_irrigation_project, notice: 'Barangay irrigation project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @barangay_irrigation_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barangay_irrigation_projects/1
  # DELETE /barangay_irrigation_projects/1.json
  def destroy
    @barangay_irrigation_project.destroy
    respond_to do |format|
      format.html { redirect_to barangay_irrigation_projects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barangay_irrigation_project
      @barangay_irrigation_project = BarangayIrrigationProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barangay_irrigation_project_params
      params.require(:barangay_irrigation_project).permit(:barangay_id, :irrigation_project_typology_id, :tag, :name_of_irrigation_project, :location, :project_service_area, :service_area_provided, :date_project_started, :date_project_ended, :date_actually_completed, :project_status, :beneficiaries_count_male_arb, :beneficiaries_count_male_non_arb, :beneficiaries_count_female_arb, :beneficiaries_count_female_non_arb, :user_id)
    end
end
