class TermTaxonomy < ApplicationRecord
  belongs_to :term
  has_many :term_relationships
end
