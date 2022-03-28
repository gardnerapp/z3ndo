json.extract! device, :id, :name, :purpose, :ip, :mac, :created_at, :updated_at
json.url device_url(device, format: :json)
