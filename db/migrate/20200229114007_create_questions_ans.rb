class CreateQuestionsAns < ActiveRecord::Migration[5.2]
  def change
    create_table :questions_ans do |t|
    	t.integer :questions_ans, :question_id
    	t.integer :questions_ans, :answer_id
      t.timestamps
    end
  end
end
