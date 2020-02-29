class AnswersController < ApplicationController
	before_action :find_question, only: [:create]
	def index; end

	def create
		@answer = @question.answers.new(answers_params)
		if @answer.save
			QuestionsAn.create!(user_id: current_user.id, answer_id: @answer.id)
			redirect_to @question, notice: 'Answer was successfully updated.' 
		else
			redirect_to @question,  notice: 'something went wrong' 
		end
		
	end

	private
	 def answers_params
      params.require(:answer).permit(:description)
    end

     def find_question
      @question = current_user.questions.find(params[:question_id])
    end
end
