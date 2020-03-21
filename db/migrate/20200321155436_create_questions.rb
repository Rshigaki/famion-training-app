class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.integer :position
      t.string :content
      t.integer :category_id
      t.integer :phase_id
      t.timestamps
    end
  end
end
