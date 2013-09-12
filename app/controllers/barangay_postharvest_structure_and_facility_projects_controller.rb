class BarangayPostharvestStructureAndFacilityProjectsController < ApplicationController
  before_action :set_barangay_postharvest_structure_and_facility_project, only: [:show, :edit, :update, :destroy]

  # GET /barangay_postharvest_structure_and_facility_projects
  # GET /barangay_postharvest_structure_and_facility_projects.json
  def index
    @barangay_postharvest_structure_and_facility_projects = BarangayPostharvestStructureAndFacilityProject.all
  end

  # GET /barangay_postharvest_structure_and_facility_projects/1
  # GET /barangay_postharvest_structure_and_facility_projects/1.json
  def show
  end

  # GET /barangay_postharvest_structure_and_facility_projects/new
  def new
    @barangay_postharvest_structure_and_facility_project = BarangayPostharvestStructureAndFacilityProject.new
  end

  # GET /barangay_postharvest_structure_and_facility_projects/1/edit
  def edit
  end

  # POST /barangay_postharvest_structure_and_facility_projects
  # POST /barangay_postharvest_structure_and_facility_projects.json
  def create
    @barangay_postharvest_structure_and_facility_project = BarangayPostharvestStructureAndFacilityProject.new(barangay_postharvest_structure_and_facility_project_params)

    respond_to do |format|
      if @barangay_postharvest_structure_and_facility_project.save
        format.html { redirect_to @barangay_postharvest_structure_and_facility_project, notice: 'Barangay postharvest structure and facility project was successfully created.' }
        format.json { render action: 'show', status: :created, location: @barangay_postharvest_structure_and_facility_project }
      else
        format.html { render action: 'new' }
        format.json { render json: @barangay_postharvest_structure_and_facility_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barangay_postharvest_structure_and_facility_projects/1
  # PATCH/PUT /barangay_postharvest_structure_and_facility_projects/1.json
  def update
    respond_to do |format|
      if @barangay_postharvest_structure_and_facility_project.update(barangay_postharvest_structure_and_facility_project_params)
        format.html { redirect_to @barangay_postharvest_structure_and_facility_project, notice: 'Barangay postharvest structure and facility project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @barangay_postharvest_structure_and_facility_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barangay_postharvest_structure_and_facility_projects/1
  # DELETE /barangay_postharvest_structure_and_facility_projects/1.json
  def destroy
    @barangay_postharvest_structure_and_facility_project.destroy
    respond_to do |format|
      format.html { redirect_to barangay_postharvest_structure_and_facility_projects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barangay_postharvest_structure_and_facility_project
      @barangay_postharvest_structure_and_facility_project = BarangayPostharvestStructureAndFacilityProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barangay_postharvest_structure_and_facility_project_params
      params.require(:barangay_postharvest_structure_and_facility_project).permit(:barangay_id, :postharvest_structure_and_facility_typology_id, :tag, :name, :description, :count_of_units_provided, :status, :date_confirmed, :user_id)
    end
end
