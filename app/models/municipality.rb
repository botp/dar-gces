class Municipality < ActiveRecord::Base
  belongs_to :province
  belongs_to :district
  has_many :barangays

end
