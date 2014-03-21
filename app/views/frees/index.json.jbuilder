json.array!(@frees) do |free|
  json.extract! free, :id, :content, :user_id
  json.url free_url(free, format: :json)
end
