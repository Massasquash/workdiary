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
  end

  private
  
  def diary_params
    params.require(:diary).permit(:date, :body)
  end

end