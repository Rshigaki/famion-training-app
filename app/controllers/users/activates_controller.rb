class Users::ActivatesController < ApplicationController
  def create
  end

  def edit
  end

  def update
    if current_user.confirmation_number == params[:resource][:confirmation_number]
      current_user.update(confirmed_at: Time.zone.now)
      redirect_to new_users_path, notice: '認証に成功しました！'
    else
      redirect_to edit_users_activates_path, alert: '認証番号が違います。'
    end
  end
end
