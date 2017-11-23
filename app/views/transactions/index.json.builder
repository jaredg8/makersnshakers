json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :item_id, :start_date, :end_date
  json.url transaction_url(transaction, format: :json)
end
