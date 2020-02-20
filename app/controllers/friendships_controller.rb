class FriendshipsController < ApplicationController
  skip_before_action  :authenticated_user

  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      flash[:notice] = "Friend Added"
      redirect_to session[:url]
    else
      flash[:alert] = "Unable to add friend"
      redirect_to session[:url]
    end
  end
end
