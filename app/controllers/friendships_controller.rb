# frozen_string_literal: true

class FriendshipsController < ApplicationController
  skip_before_action :authenticated_user

  def create
    @friendship = current_user.friendships.build(friend_id: params[:friend_id])
    if @friendship.save
      flash[:notice] = 'Friend Added'
    else
      flash[:alert] = 'Unable to add friend'
    end
    redirect_to session[:url]
  end
end
