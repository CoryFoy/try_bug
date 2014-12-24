json.array!(@local_scores) do |local_score|
  json.extract! local_score, :id, :game, :score
  json.url local_score_url(local_score, format: :json)
end
