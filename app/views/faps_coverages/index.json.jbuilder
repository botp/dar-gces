json.array!(@faps_coverages) do |faps_coverage|
  json.extract! faps_coverage, :name, :description
  json.url faps_coverage_url(faps_coverage, format: :json)
end
