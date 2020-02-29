class Answer < ApplicationRecord
	has_many :questions_an
	has_many :users, through: :questions_an
	
	belongs_to :question
end
