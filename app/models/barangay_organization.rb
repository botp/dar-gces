class BarangayOrganization < ActiveRecord::Base
  belongs_to :barangay
  belongs_to :organization_typology
  belongs_to :registering_agency
  has_many :barangay_organization_memberships
end
