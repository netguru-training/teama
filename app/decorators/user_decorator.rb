class UserDecorator < Draper::Decorator
  delegate_all

  def average_rating
  	if object.reviews.present?
			object.reviews.pluck(:rating).reduce(:+)
		else
			"-"
		end
  end

end
