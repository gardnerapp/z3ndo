json.extract! device, :id, :name, :purpose, :ip, :mac, :type, :created_at, :updated_at
json.url device_url(device, format: :json)
