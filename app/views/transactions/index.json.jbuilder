json.array!(@transactions) do |transaction|
  json.extract! transaction, :id
  json.start transaction.start_date
  json.end transaction.end_date
  json.title transaction.item.name
  json.description transaction.item.description
  json.url transaction_url(transaction, format: :html)
end
