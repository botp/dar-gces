class Barangay < ActiveRecord::Base
  belongs_to :municipality
  has_one :arc_barangay
  has_one :arc, :through => :arc_barangay
  has_one :district, :through => :municipality
  has_one :province, :through => :district
  has_many :barangay_geographicals
  has_many :barangay_politicals
  has_many :barangay_populations
  has_many :barangay_lti_statuses
  has_many :barangay_trainings
  has_many :barangay_fmr_projects
  has_many :barangay_bridge_projects
  has_many :barangay_organizations
  has_many :barangay_organization_memberships, :through => :barangay_organizations
  has_many :barangay_irrigation_projects
  has_many :barangay_postharvest_equipment_and_machinery_projects
  has_many :barangay_postharvest_structure_and_facility_projects


  def self.search(query_ids)
    find query_ids     
  end


  def long_name
    [ 
      name ,
      (arc ? arc.name : "non-ARC") ,
      municipality.name ,
      district.name ,
      province.name ,
    ].join(", ")
  end

end
