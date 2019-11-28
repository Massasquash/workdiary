class CategoriesController < ApplicationController
  def new
    @category = Category.new
    @diary_id = session[:diary_id] = params[:diary_id]
  end
  
  def create
    @category = Category.new(category_params)
    @diary_id = session[:diary_id]
    if @category.save
      redirect_to new_diary_work_path(@diary_id)
      session[:diary_id] = nil
    else 
      render 'new'
    end
  end
  
  def index
    @categories = Category.all
  end
  
  private
  
  def category_params
    params.require(:category).permit(:name)
  end  
  
end