class AddProfileToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :age, :integer, default: nil
    add_column :users, :job, :string, default: nil
  end
end
