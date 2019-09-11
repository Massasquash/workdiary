class DiariesController < ApplicationController
  def new
    @diary = Diary.new
  end
  
  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to diaries_path
    else
      render 'new'
    end
  end

  def edit
  end

  def index
    @diaries = Diary.all.order(date: "DESC")
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