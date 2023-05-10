class UserSessionsController < ApplicationController

  def new; end

  def create
    @user = login(params[:email], params[:password])
    binding.pry
    if @user
      redirect_to new_post_path
    else
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path
  end

end