class Arc < ActiveRecord::Base
  has_many :arc_barangays
  has_many :barangays, :through => :arc_barangays

end
