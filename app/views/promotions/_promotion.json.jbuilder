json.extract! promotion, :id, :promo_name, :promo_cost, :begin_date, :end_date, :created_at, :updated_at
json.url promotion_url(promotion, format: :json)
