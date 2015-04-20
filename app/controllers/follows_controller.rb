class FollowsController < ApplicationController
  before_filter :authenticate_user!
  
  def create
    friend = User.find_by_name(params['friend_name'])
    if friend
      Follow.create(user: current_user, friend: friend)
    end
    redirect_to friends_main_path
  end
end
