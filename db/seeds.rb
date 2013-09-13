# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

# region
region = Region.find_or_create_by(name:"Region X")

# province > district > municipality/arc > barangay 
CSV.foreach("./docx/Region X Brgys_Partial.csv", headers:true) do |row|
  p row
  p row["ARC_TAG"]

  # province
  province = Province.find_or_create_by(name:row["PROVINCE"], region:region)

  # district
  district = District.find_or_create_by(name:row["CONGRESSIONAL DISTRICT"], province:province)

  # municipality
  municipality = Municipality.find_or_create_by(name:row["MUNICIPALITY"], district_id:district.id)

  # barangay
  barangay = Barangay.find_or_create_by(name:row["BARANGAY"], municipality_id:municipality.id)


  # arc

  if row["ARC_TAG"]
    date = Date.new(row["ARC YEAR"].to_i)
    puts "***"
    puts date
    puts "***"
    arc = Arc.find_or_create_by(name:row[" ARC_NAME "], tag:row["ARC_TAG"], date_confirmed:date )

    arc_barangay = ArcBarangay.find_or_create_by(barangay_id:barangay.id, arc_id:arc.id)  

  end

end

