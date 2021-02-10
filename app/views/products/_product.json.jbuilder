json.extract! product, :id, :device_name, :manufacturer, :device_platform, :min_price, :created_at, :updated_at
json.url product_url(product, format: :json)
