class UsersController < ApplicationController
  expose(:last_reviews) { current_user.reviews.last(5) }
end
