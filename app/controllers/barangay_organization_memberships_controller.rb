class BarangayOrganizationMembershipsController < ApplicationController
  before_action :set_barangay_organization_membership, only: [:show, :edit, :update, :destroy]

  # GET /barangay_organization_memberships
  # GET /barangay_organization_memberships.json
  def index
    @barangay_organization_memberships = BarangayOrganizationMembership.all
  end

  # GET /barangay_organization_memberships/1
  # GET /barangay_organization_memberships/1.json
  def show
  end

  # GET /barangay_organization_memberships/new
  def new
    @barangay_organization_membership = BarangayOrganizationMembership.new
  end

  # GET /barangay_organization_memberships/1/edit
  def edit
  end

  # POST /barangay_organization_memberships
  # POST /barangay_organization_memberships.json
  def create
    @barangay_organization_membership = BarangayOrganizationMembership.new(barangay_organization_membership_params)

    respond_to do |format|
      if @barangay_organization_membership.save
        format.html { redirect_to @barangay_organization_membership, notice: 'Barangay organization membership was successfully created.' }
        format.json { render action: 'show', status: :created, location: @barangay_organization_membership }
      else
        format.html { render action: 'new' }
        format.json { render json: @barangay_organization_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barangay_organization_memberships/1
  # PATCH/PUT /barangay_organization_memberships/1.json
  def update
    respond_to do |format|
      if @barangay_organization_membership.update(barangay_organization_membership_params)
        format.html { redirect_to @barangay_organization_membership, notice: 'Barangay organization membership was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @barangay_organization_membership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barangay_organization_memberships/1
  # DELETE /barangay_organization_memberships/1.json
  def destroy
    @barangay_organization_membership.destroy
    respond_to do |format|
      format.html { redirect_to barangay_organization_memberships_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barangay_organization_membership
      @barangay_organization_membership = BarangayOrganizationMembership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barangay_organization_membership_params
      params.require(:barangay_organization_membership).permit(:barangay_organization_id, :tag, :name, :description, :date_confirmed, :count_male_arb, :count_male_non_arb, :count_female_arb, :count_female_non_arb, :count_bod_official_male_arb, :count_bod_official_male_non_arb, :count_bod_official_female_arb, :count_bod_official_female_non_arb, :count_municipal_level_rep_male_arb, :count_municipal_level_rep_male_non_arb, :count_municipal_level_rep_female_arb, :count_municipal_level_rep_female_non_arb, :count_provincial_level_rep_male_arb, :count_provincial_level_rep_male_non_arb, :count_provincial_level_rep_female_arb, :count_provincial_level_rep_female_non_arb, :oma_rating, :organizational_status, :with_sustainability, :type_of_meetings, :frequency, :capital_buildup, :capital_count_of_members_contributing, :savings, :savings_count_of_members_contributing, :assets, :liabilities, :service_provided)
    end
end
