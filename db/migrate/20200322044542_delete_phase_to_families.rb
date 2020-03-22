class DeletePhaseToFamilies < ActiveRecord::Migration[6.0]
  def change
    remove_column :families, :phase, :string, default: 'test'
  end
end
