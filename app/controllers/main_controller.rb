class MainController < ApplicationController
  before_filter :authenticate_user!
  def index
    @friends = current_user.friends
    @posts = []
    @friends.each do |friend|
      if friend.posts.first
        @posts.push([friend.name, friend.posts.first.text])
      end
    end
  end
  
  def friends
    @friends = current_user.friends
  end
end
