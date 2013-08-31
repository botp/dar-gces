class Municipality < ActiveRecord::Base
  belongs_to :district
  has_many :barangays

end
