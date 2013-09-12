class BarangayPostharvestEquipmentAndMachineryProject < ActiveRecord::Base
    belongs_to :barangay
    belongs_to :postharvest_equipment_and_machinery_typology
end
