class Post < ApplicationRecord
  belongs_to :user
  # has_many :post_user_relations, dependent: :destroy
  # has_many :okini_users, through: :post_user_relations, source: :post
end

