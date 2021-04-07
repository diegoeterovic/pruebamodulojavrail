json.extract! category, :id, :title, :parent_category, :public, :created_at, :updated_at
json.url category_url(category, format: :json)
