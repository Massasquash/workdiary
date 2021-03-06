class TemplatesController < ApplicationController
  def new
    @template = Template.new
    @diary_id = session[:diary_id] = params[:diary_id]
  end

  def create
    @template = Template.new(template_params)
    @template.user = current_user
    @diary_id = session[:diary_id]
    if @template.save
      if @diary_id.present?
        redirect_to new_diary_work_path(@diary_id)
        session[:diary_id] = nil
      else
        redirect_to templates_path
      end
    else
      render 'new'
    end
  end
  
  def index
    @templates = current_user.templates
  end
  
  def edit
    @template = Template.find(params[:id])
  end
  
  def update
    @template = Template.find(params[:id])
    if @template.update(template_params)
      redirect_to templates_path
    else
      render 'edit'
    end
  end
  
  def destroy
    template = Template.find(params[:id])
    template.destroy!
    redirect_to templates_path
  end
  
  def get_body
    template = Template.find(params[:template_id])
    @template_body = template.body
    respond_to do |format|
      format.js
    end
  end
  
  private
  
  def template_params
    params.require(:template).permit(:name, :body)
  end
  
end