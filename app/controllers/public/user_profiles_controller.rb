class Public::UserProfilesController < ApplicationController
  def create
    current_user.update(age: params[:profile][:age], job: params[:profile][:job])
    if current_user.family.phase == nil
      redirect_to new_phases_path, notice: 'プロフィール登録が完了しました'
    else
      redirect_to root_path, notice: 'プロフィール登録が完了しました'
    end
  end
  
  def update
    current_user.update(age: params[:profile][:age], job: params[:profile][:job])
    if current_user.family.phase == nil
      redirect_to new_phases_path, notice: 'プロフィールの変更が完了しました'
    else
      redirect_to root_path, notice: 'プロフィールの変更が完了しました'
    end 
  end
  
  def edit
  end
  
  def new
  end
end
