class Admin::CoursesController < ApplicationController
  def new
    @course = Course.new
    @subjects = Subject.all
  end

  def create
    @course = Course.new course_params
    @subjects = Subject.all
    if @course.save
      flash[:success] = t "messages.admin.create.success"
      redirect_to new_admin_course_path
    else
      render :new
    end
  end

  private
  def course_params
    params.require(:course).permit :name, :description, subject_ids: []
  end
end
