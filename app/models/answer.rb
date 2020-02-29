class Answer < ApplicationRecord
	has_many :users, through: :questions_ans
	belongs_to :question
end
