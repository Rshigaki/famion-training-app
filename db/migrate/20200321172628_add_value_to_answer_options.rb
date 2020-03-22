class AddValueToAnswerOptions < ActiveRecord::Migration[6.0]
  def change
    add_column :answer_options, :value, :integer
  end
end
