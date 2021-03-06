class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:facebook]	

  has_many :collections
  has_many :reviews
  has_many :board_games, through: :collections
  has_many :comments
  has_many :friends
  has_many :users, through: :friends

  def friends_to_accept(user)
    Friend.where(accepted: false, user_id: user.id)
    # Friend.find_by('friends.accepted = ? AND friend_id = ?', false, id)
  end

	def self.from_omniauth(auth)
	  	where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
	    user.email = auth.info.email
	    user.password = Devise.friendly_token[0,20]
	    # user.name = auth.info.name   # assuming the user model has a name
	    # user.image = auth.info.image # assuming the user model has an image
  		end
	end
end
