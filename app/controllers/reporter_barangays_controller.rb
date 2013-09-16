
class ReporterBarangaysController < ApplicationController
  def initialize
    @reports_program_hash = {
      "Geographics" => "barangay_geographicals" ,
      "Population" => "barangay_populations" ,
      "Barangay Officials" => "barangay_politicals",
      "LTI Status" => "barangay_lti_statuses",
      "Barangay Organizations" => "barangay_organizations",
      "Organizations Memberships" => "barangay_organization_memberships",
      "FMR Projects" => "barangay_fmr_projects",
      "Bridge Projects" => "barangay_bridge_projects",
      "Irrigation Projects" => "barangay_irrigation_projects",
      "PostHarvest Equipment and Machinery Projects" => "barangay_postharvest_equipment_and_machinery_projects",
      "PostHarvest Structure and Facility Projects" => "barangay_postharvest_structure_and_facility_projects",
    }

    @reports = @reports_program_hash.keys

    @barangays = Barangay.none
    @reports_selection = []
  end

  def index
    @barangays=Barangay.all  
    render :index, layout: "layouts/application"
  end


  def show
    if params[:search]
      @barangays = Barangay.search(params[:search])
      @reports_selection = params[:reports]
      render :show, layout: "layouts/application"
    else
      redirect_to action: 'index'
    end
  end

end
