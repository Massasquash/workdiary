class WorksController < ApplicationController
  def new
    @diary = Diary.find params[:diary_id]
    @work = Work.new
  end

  def create
    @diary = Diary.find params[:diary_id]
    @diary.works.create(work_params)
    redirect_to diary_path(@diary)
  end
  
  private
  
  def work_params
    params.require(:work).permit(:date, :category, :title, :body, :image )
  end
  
end
