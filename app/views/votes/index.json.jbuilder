json.array!(@votes) do |vote|
  json.extract! vote, :id, :name, :restaurant
  json.url vote_url(vote, format: :json)
end
