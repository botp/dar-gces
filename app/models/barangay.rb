class Barangay < ActiveRecord::Base
  belongs_to :municipality
  has_many :barangay_geographicals
  has_many :barangay_politicals
  has_many :barangay_populations
  has_one :arc_barangay
  
end
