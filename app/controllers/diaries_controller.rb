class DiariesController < ApplicationController
  def new
    @diary = Diary.new
  end
  
  def create
    @diary = Diary.new(diary_params)
    @diary.user = current_user
    if @diary.save
      redirect_to diaries_path
    else
      render 'new'
    end
  end

  def edit
    @diary = Diary.find params[:id]
  end
  
  def update
    @diary = Diary.find params[:id]
    if @diary.update(diary_params)
      redirect_to diaries_path
    else
      render 'edit'
    end
  end

  def index
    @diaries = current_user.diaries.includes(:works).order(date: :desc)
  end

  def show
    @diary = Diary.find params[:id]
  end
  
  def destroy
    diary = Diary.find params[:id]
    diary.destroy!
    redirect_to diaries_path
  end

  private
  
  def diary_params
    params.require(:diary).permit(:date, :body)
  end
end