class MainController < ApplicationController
  before_filter :authenticate_user!
  def index
    @user = current_user
    @friends = current_user.friends
    @posts = []
    @friends.each do |friend|
      if friend.posts.first
        @posts.push([friend, friend.posts.first.text])
      end
    end
  end
  
  def friends
    @friend = Follow.new(user: current_user)
    @friends = current_user.friends
  end
end
