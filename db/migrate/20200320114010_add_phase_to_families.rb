class AddPhaseToFamilies < ActiveRecord::Migration[6.0]
  def change
    add_column :families, :phase, :string, default: 'test'
  end
end
