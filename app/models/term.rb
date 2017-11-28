class Term < ApplicationRecord
  has_many :term_options
  has_many :term_taxonomies
end
