class PostUserRelation < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :user_id, uniqueness: { scope: :post_id }
end

上記の
# バリデーションを使って一人のユーザーは一つの投稿に一回だけいいねできるような仕組みになっている