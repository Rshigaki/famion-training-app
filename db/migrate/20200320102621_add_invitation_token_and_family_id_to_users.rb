class AddInvitationTokenAndFamilyIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :family_id, :integer
    add_column :users, :invitation_token, :string, default: 'token'
  end
end
