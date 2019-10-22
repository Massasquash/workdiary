class WorksController < ApplicationController
  def new
    @diary = Diary.find params[:diary_id]
    @work = @diary.works.build
    @templates = Template.all
  end

  def create
    @diary = Diary.find params[:diary_id]
    @work = @diary.works.build(work_params)
    @templates = Template.all
    if @work.save
      redirect_to diary_path(@diary)
    else
      render 'new'
    end
  end
  
  def edit
    @diary = Diary.find params[:diary_id]
    @work = @diary.works.find params[:id]
    @templates = Template.all
  end
  
  def update
    @diary = Diary.find params[:diary_id]
    @work = @diary.works.find params[:id]
    @templates = Template.all
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