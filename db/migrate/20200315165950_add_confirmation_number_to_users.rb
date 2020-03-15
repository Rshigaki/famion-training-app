class AddConfirmationNumberToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :confirmation_number, :string
    add_column :users, :confirmed_at, :datetime, default: nil
  end
end
