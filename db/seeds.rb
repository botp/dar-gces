# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

CSV.foreach("/botp/rails_projects/dar/docx/Region X Brgys_Partial.csv", headers:true) do |row|
  p row
  p row["ARC_TAG"]
  gets
end

