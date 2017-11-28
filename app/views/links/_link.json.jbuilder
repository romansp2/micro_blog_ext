json.extract! link, :id, :link_url, :link_name, :link_image, :link_target, :link_description, :link_visible, :link_owner, :link_rating, :link_rel, :link_notes, :link_rss, :created_at, :updated_at
json.url link_url(link, format: :json)
