json.extract! term_taxonomy, :id, :term_id, :taxonomy, :description, :parent, :count, :created_at, :updated_at
json.url term_taxonomy_url(term_taxonomy, format: :json)
