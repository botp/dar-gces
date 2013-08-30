class BarangayBridgeProjectsController < ApplicationController
  before_action :set_barangay_bridge_project, only: [:show, :edit, :update, :destroy]

  # GET /barangay_bridge_projects
  # GET /barangay_bridge_projects.json
  def index
    @barangay_bridge_projects = BarangayBridgeProject.all
  end

  # GET /barangay_bridge_projects/1
  # GET /barangay_bridge_projects/1.json
  def show
  end

  # GET /barangay_bridge_projects/new
  def new
    @barangay_bridge_project = BarangayBridgeProject.new
  end

  # GET /barangay_bridge_projects/1/edit
  def edit
  end

  # POST /barangay_bridge_projects
  # POST /barangay_bridge_projects.json
  def create
    @barangay_bridge_project = BarangayBridgeProject.new(barangay_bridge_project_params)

    respond_to do |format|
      if @barangay_bridge_project.save
        format.html { redirect_to @barangay_bridge_project, notice: 'Barangay bridge project was successfully created.' }
        format.json { render action: 'show', status: :created, location: @barangay_bridge_project }
      else
        format.html { render action: 'new' }
        format.json { render json: @barangay_bridge_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barangay_bridge_projects/1
  # PATCH/PUT /barangay_bridge_projects/1.json
  def update
    respond_to do |format|
      if @barangay_bridge_project.update(barangay_bridge_project_params)
        format.html { redirect_to @barangay_bridge_project, notice: 'Barangay bridge project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @barangay_bridge_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barangay_bridge_projects/1
  # DELETE /barangay_bridge_projects/1.json
  def destroy
    @barangay_bridge_project.destroy
    respond_to do |format|
      format.html { redirect_to barangay_bridge_projects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barangay_bridge_project
      @barangay_bridge_project = BarangayBridgeProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barangay_bridge_project_params
      params.require(:barangay_bridge_project).permit(:tag, :barangay_id, :name_of_bridge_project, :location, :type_of_project, :project_length, :project_length_provided, :percentage_completion, :date_project_started, :date_project_ended, :date_completed, :project_status)
    end
end
