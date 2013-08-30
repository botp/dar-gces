class Barangay < ActiveRecord::Base
  belongs_to :municipality
  has_many :barangay_geographicals
  has_many :barangay_politicals
  has_many :barangay_populations
  has_one :arc_barangay
  has_many :barangay_lti_statuses
  has_many :barangay_trainings

end
