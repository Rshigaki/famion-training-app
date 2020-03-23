class Public::InvitationsController < ApplicationController
  def index
    @token = current_user.invitation_token
  end
  
  def edit
  end
  
  def update
    if inviter = User.find_by(invitation_token: params[:token][:family_token])
      current_user.family.delete
      current_user.update(family: inviter.family)
      redirect_to root_path, notice: 'ペアが登録されました！'
    else
      redirect_to edit_invitation_path(current_user.id), notice: 'ペアが見つかりません。'
    end
  end
end
