class AddForeignKeyToFamilies < ActiveRecord::Migration[6.0]
  def change
    add_column :families, :phase_id, :integer
  end
end
