class Arc < ActiveRecord::Base
  has_one :arc_barangay
  has_many :barangays, :through => :arc_barangays

end
