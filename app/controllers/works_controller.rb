class WorksController < ApplicationController
  def new
    @diary = Diary.find params[:diary_id]
    @work = @diary.works.build
    @template = Template.new
    @templates = Template.all
  end

  def create
    @diary = Diary.find params[:diary_id]
    @work = @diary.works.build(work_params)
    if @work.save
      redirect_to diary_path(@diary)
    else
      render 'new'
    end
  end
  
  def edit
    @diary = Diary.find params[:diary_id]
    @work = @diary.works.find params[:id]
  end
  
  def update
    @diary = Diary.find params[:diary_id]
    @work = @diary.works.find params[:id]
    if @work.update(work_params)
      redirect_to diary_path(@diary)
    else
      render 'edit'
    end
  end
  
  def destroy
    diary = Diary.find params[:diary_id]
    work = diary.works.find params[:id]
    work.destroy!
    redirect_to diary_path(diary)
  end
  
  private
  
  def work_params
    params.require(:work).permit(:date, :category, :title, :body, :image )
  end
  
end