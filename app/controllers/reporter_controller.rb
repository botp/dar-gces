class ReporterController < ApplicationController
  def selector
    @regions = Region.all
    @provinces = Province.all
    @districts = District.all
    @municipalities = Municipality.all
    @arcs = Arc.all
    @barangays = Barangay.all

  end

  def update_provinces
    # updates provinces based on region selected
    region = Region.find(params[:region_id])
    # map to name and id for use in our options_for_select
    @provinces = region.provinces.map{|a| [a.name, a.id]}.insert(0, "Select a Province")
  end

  def update_districts
    # updates provinces based on region selected
    province = Province.find(params[:province_id])
    # map to name and id for use in our options_for_select
    @provinces = province.districts.map{|a| [a.name, a.id]}.insert(0, "Select a District")
  end

end
