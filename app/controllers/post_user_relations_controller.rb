class PostUserRelationsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    current_user.post_user_relations(post)
    redirect_back fallback_location: root_path
  end

  def destroy
    post = current_user.post_user_relations.find(params[:id]).board
    current_user.unpost_user_relations(post)
    redirect_back fallback_location: root_path
  end
end