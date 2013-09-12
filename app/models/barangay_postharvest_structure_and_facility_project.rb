class BarangayPostharvestStructureAndFacilityProject < ActiveRecord::Base
  belongs_to :barangay
  belongs_to :postharvest_structure_and_facility_typology
end
