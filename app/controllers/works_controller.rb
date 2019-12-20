class WorksController < ApplicationController
  def index
  end

  def new
    @diary = Diary.find params[:diary_id]
    @work = @diary.works.build
    @templates = current_user.templates
    @categories = current_user.categories
  end

  def create
    @diary = Diary.find params[:diary_id]
    @work = @diary.works.build(work_params)
    @templates = current_user.templates
    @categories = current_user.categories
    if @work.save
      redirect_to diary_path(@diary)
    else
      render 'new'
    end
  end
  
  def edit
    @diary = Diary.find params[:diary_id]
    @work = @diary.works.find params[:id]
    @templates = current_user.templates
    @categories = current_user.categories
  end
  
  def update
    @diary = Diary.find params[:diary_id]
    @work = @diary.works.find params[:id]
    @templates = current_user.templates
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
    params.require(:work).permit(:date, :title, :body, :image, :category_id)
  end
  
end