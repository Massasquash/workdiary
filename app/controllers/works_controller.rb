class WorksController < ApplicationController
  def new
    @diary = Diary.find params[:diary_id]
    @work = Work.new
  end
  
end
