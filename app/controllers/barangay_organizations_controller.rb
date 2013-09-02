class BarangayOrganizationsController < ApplicationController
  before_action :set_barangay_organization, only: [:show, :edit, :update, :destroy]

  # GET /barangay_organizations
  # GET /barangay_organizations.json
  def index
    @barangay_organizations = BarangayOrganization.all
  end

  # GET /barangay_organizations/1
  # GET /barangay_organizations/1.json
  def show
  end

  # GET /barangay_organizations/new
  def new
    @barangay_organization = BarangayOrganization.new
  end

  # GET /barangay_organizations/1/edit
  def edit
  end

  # POST /barangay_organizations
  # POST /barangay_organizations.json
  def create
    @barangay_organization = BarangayOrganization.new(barangay_organization_params)

    respond_to do |format|
      if @barangay_organization.save
        format.html { redirect_to @barangay_organization, notice: 'Barangay organization was successfully created.' }
        format.json { render action: 'show', status: :created, location: @barangay_organization }
      else
        format.html { render action: 'new' }
        format.json { render json: @barangay_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barangay_organizations/1
  # PATCH/PUT /barangay_organizations/1.json
  def update
    respond_to do |format|
      if @barangay_organization.update(barangay_organization_params)
        format.html { redirect_to @barangay_organization, notice: 'Barangay organization was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @barangay_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barangay_organizations/1
  # DELETE /barangay_organizations/1.json
  def destroy
    @barangay_organization.destroy
    respond_to do |format|
      format.html { redirect_to barangay_organizations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barangay_organization
      @barangay_organization = BarangayOrganization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barangay_organization_params
      params.require(:barangay_organization).permit(:barangay_id, :tag, :name, :description, :location, :name_of_chairman, :year_organized, :organization_typology_id, :registering_agency_id, :year_registered, :registration_number, :date_confirmed)
    end
end
