json.array!(@arcs) do |arc|
  json.extract! arc, :tag, :name, :description, :date_confirmed, :classification, :arc_profiled, :dev_plan_available, :dev_plan_mainstream, :alda_rating, :faps_coverage
  json.url arc_url(arc, format: :json)
end
