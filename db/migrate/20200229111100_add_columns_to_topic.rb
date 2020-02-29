class AddColumnsToTopic < ActiveRecord::Migration[5.2]
  def change
  	add_reference :topics, :user, index: true
  	add_column :topics, :title, :string
  end
end
