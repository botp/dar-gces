class Province < ActiveRecord::Base
  belongs_to :region
  has_many :municipalities
  has_many :districts
end
