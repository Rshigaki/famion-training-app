class CreateAnswerOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :answer_options do |t|
      t.string :content
      t.integer :question_id
      t.timestamps
    end
  end
end
