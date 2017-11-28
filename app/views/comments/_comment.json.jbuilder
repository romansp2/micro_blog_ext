json.extract! comment, :id, :post_id, :comment_author, :comment_author_email, :comment_author_url, :comment_author_ip, :comment_content, :comment_karma, :comment_approved, :comment_agent, :comment_type, :comment_parent, :user_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
