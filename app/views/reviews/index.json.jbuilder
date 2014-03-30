json.array!(@reviews) do |review|
  json.extract! review, :id, :title, :content, :user_id
  json.url review_url(review, format: :json)
end
