json.extract! customer, :id, :sales, :name, :created_at, :updated_at
json.url customer_url(customer, format: :json)
