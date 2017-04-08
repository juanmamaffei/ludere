json.extract! post, :id, :user_id, :club_id, :body, :alcance, :created_at, :updated_at
json.url post_url(post, format: :json)
