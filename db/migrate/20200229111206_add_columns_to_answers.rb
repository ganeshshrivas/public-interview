class AddColumnsToAnswers < ActiveRecord::Migration[5.2]
  def change
  	add_column :answers, :description, :text
  	add_reference :answers, :user, index: true
  	add_reference :answers, :question, index: true
  end
end
