class Barangay < ActiveRecord::Base
  belongs_to :municipality
  has_many :barangay_geographicals
  has_many :barangay_politicals
end
