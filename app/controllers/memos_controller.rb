class MemosController < ApplicationController

  def new
    @diary = Diary.find params[:diary_id]
    @work = @diary.works.find params[:work_id]
    @memo = @work.build_memo
  end
  
  def create
    @diary = Diary.find params[:diary_id]
    @work = @diary.works.find params[:work_id]
    @memo = @work.create_memo(memo_params)
    if @memo.save
      redirect_to diary_path(@diary)
    else
      render 'new'
    end
  end

  private

  def memo_params
    params.require(:memo).permit(:body)
  end
  
end