class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable and :omniauthable
 	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
	mount_uploader :avatar, AvatarUploader
	has_many :questions
	has_many :answers #For the answers of particular user
	has_and_belongs_to_many :voted_answers, class_name: "Answer" #For the answers upvoted by particular user
	has_and_belongs_to_many :followers, class_name: 'User', :join_table => "followees_followers", foreign_key: "followee_id", association_foreign_key: "follower_id"
	has_and_belongs_to_many :followees, class_name: 'User', :join_table => "followees_followers", foreign_key: "follower_id", association_foreign_key: "followee_id"

end
