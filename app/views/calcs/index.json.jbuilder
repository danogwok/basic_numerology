json.array!(@calcs) do |calc|
  json.extract! calc, :id, :your_name, :lovers_name
  json.url calc_url(calc, format: :json)
end
