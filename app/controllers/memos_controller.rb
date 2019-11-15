class MemosController < ApplicationController

  def new
    @work = Work.find params[:work_id]
    @memo = @work.build_memo
  end
  
  def create
    @work = Work.find params[:work_id]
    @memo = @work.build_memo(memo_params)
    if @memo.save
      redirect_to diary_path(@work.diary)
    else
      render 'new'
    end
  end
  
  def edit
    @work = Work.find params[:work_id]
    @memo = @work.memo
  end
  
  def update
    @work = Work.find params[:work_id]
    @memo = @work.memo
    if @memo.update(memo_params)
      redirect_to diary_path(@work.diary)
    else
      render 'edit'
    end
  end
  
  def destroy
    work = Work.find params[:work_id]
    memo = work.memo
    memo.destroy!
    redirect_to diary_path(work.diary)
  end


  private

  def memo_params
    params.require(:memo).permit(:body)
  end
  
end