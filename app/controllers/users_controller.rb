class UsersController < ApplicationController
	before_action :authenticate_user!

	  expose(:last_reviews) { current_user.reviews.last(5) }

	  def index
	  end

end
