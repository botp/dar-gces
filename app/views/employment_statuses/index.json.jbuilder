json.array!(@employment_statuses) do |employment_status|
  json.extract! employment_status, :name, :description
  json.url employment_status_url(employment_status, format: :json)
end
