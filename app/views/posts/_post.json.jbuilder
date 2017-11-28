json.extract! post, :id, :post_title, :post_name, :post_excerpt, :post_content, :post_status, :post_author, :post_password, :post_content_filtered, :post_parent, :post_type, :post_mime_type, :to_ping, :pinged, :guid, :menu_order, :comment_count, :created_at, :updated_at
json.url post_url(post, format: :json)
