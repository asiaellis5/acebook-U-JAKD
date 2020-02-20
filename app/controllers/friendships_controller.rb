class FriendshipsController < ApplicationController
  skip_before_action  :authenticated_user
end
