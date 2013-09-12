
class ReporterBarangaysController < ApplicationController
  def initialize
    @reports_program_hash = {
      "Geographics" => "barangay_geographicals" ,
      "Population" => "barangay_populations" ,
      "Barangay Officials" => "barangay_politicals",
      "LTI Status" => "barangay_lti_statuses",
      "Barangay Organizations" => "barangay_organizations",
      "Organizations Memberships" => "barangay_organization_memberships",
      "FMR Projects" => "barangay_fmr_projects"
    }

    @reports = @reports_program_hash.keys

    # @reports = [
    #   "Geographics", 
    #   "Population", 
    # ]


    @barangays = Barangay.none
    @reports_selection = []
  end

  def index
    @barangays=Barangay.all  
  end


  def show
    if params[:search]
      @barangays = Barangay.search(params[:search])
      @reports_selection = params[:reports]
    else
      redirect_to action: 'index'
    end
  end

end
