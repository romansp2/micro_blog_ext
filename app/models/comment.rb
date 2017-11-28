class Comment < ApplicationRecord
  has_many :comment_options
  belongs_to :user
end
