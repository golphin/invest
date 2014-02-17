json.array!(@corretoras) do |corretora|
  json.extract! corretora, :corretora, :ativo
  json.url corretora_url(corretora, format: :json)
end