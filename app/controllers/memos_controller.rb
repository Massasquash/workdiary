class MemosController < ApplicationController

  def new
    @diary = Diary.find params[:diary_id]
    @work = @diary.works.find params[:work_id]
    @memo = @work.build_memo
  end

end