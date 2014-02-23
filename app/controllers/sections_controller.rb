class SectionsController < ApplicationController
before_filter :authenticate_user!, except: [:index, :show]

  def index
    course = Course.find(params[:course_id])
    @sections = Course.all
    @created_courses = createdCourses
  end

  def show
    @section = Section.find(params[:id])
  end

  def create
    new_section = params.require(:section).permit(:title)
    section = Section.create(new_section)
    course = Course.find(params[:course_id])
    section.course_id = course.id
    section.save

    redirect_to course_sections_path
  end

  def edit
  end

  def update
  end

  def delete
  end


end
