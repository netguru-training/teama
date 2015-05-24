class FriendsController < ApplicationController
	before_action :authenticate_user!
	expose(:user)
	expose(:friends) do
		current_user.friends
	end

	def create
		friend = User.find(params[:format])
		Friend.create(friend_id: friend, user_id: current_user.id)
		redirect_to :back, notice: 'User added to Friends list'
	end

	def acceptance
		friend = Friend.find(params[:f].id)
		friend.accepted.toggle!
		redirect_to :back
	end


end