json.array!(@official_scores) do |official_score|
  json.extract! official_score, :id, :game, :high_score
  json.url official_score_url(official_score, format: :json)
end
