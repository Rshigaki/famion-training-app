class Public::PhasesController < ApplicationController
  def create
    if params[:phase].presence
      current_user.family.update(phase: params[:phase][:phase])
      redirect_to root_path, notice: '交際フェーズの登録が完了しました！'
    else
      redirect_to new_phases_path, alert: '交際フェーズを選択してください'
    end
  end
  
  def new
  end
end
