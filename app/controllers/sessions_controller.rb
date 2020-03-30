class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      sessions[:user_id] = @user.id
      redirect_to '/posts'
    else
      redirect_to '/login'
    end
  end

end
