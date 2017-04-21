class Answer < ActiveRecord::Base
	belongs_to :user
	belongs_to :question
	has_and_belongs_to_many :upvotees, class_name: "User"
	validates_presence_of :text, :question_id
end
