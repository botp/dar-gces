class ArcBarangay < ActiveRecord::Base
  belongs_to :arc
  belongs_to :barangay
end
