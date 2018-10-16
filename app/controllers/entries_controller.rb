class EntriesController < ApplicationController

  def create
    @entry = current_user.entries.new(entry_params)
    if @entry.save
      flash[:notice] = "応募完了しました"
      redirect_to @entry.job, notice: "予約が完了しました。"
    else
      flash[:alert] = "応募に失敗しました"
      redirect_to :back
    end
  end


private

  def entry_params
    params.require(:entry).permit(:user_id, :job_id, :messages)
  end

end
