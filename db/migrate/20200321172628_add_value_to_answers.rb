class AddValueToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :answers, :value, :integer
  end
end
