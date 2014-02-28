class SectionsController < ApplicationController
before_filter :authenticate_user!, except: [:index, :show]

  def index

    @course = Course.find(params[:course_id])
    @category = Category.find(@course.category_id)
    @sections = @course.sections

    # todo: pass json as :json => {"sections" => @sections}
    respond_to do |f|
      f.html
      f.json { render :json => @sections  }
    end

  end

  def show
    @course = Course.find(params[:course_id])
    @category = Category.find(@course.category_id)
    @sections = @course.sections
    @section = Section.find(params[:id])
    @contents = @section.contents
  end

  def new
    @course = Course.find(params[:course_id])
    @category = Category.find(@course.category_id)
    @sections = @course.sections
    respond_to do |f|
      f.html
      f.json { render :json => @sections }
    end
  end

  def create
    new_section = params.require(:section).permit(:title)
    @section = Section.create(new_section)
    course = Course.find(params[:course_id])
    @section.course_id = course.id
    @section.save
    
    respond_to do |f|
      f.json { render :json => @section }
    end
    # redirect_to course_sections_path(course)
  end

  def edit
    @course = Course.find(params[:course_id])
    @category = Category.find(@course.category_id)
    @section = Section.find(params[:id])
    @sections = @course.sections
    course_params = params[:course_id]
    gon.content_path = "/courses/#{course_params}/sections/#{@section.id}/contents.json"
    gon.edit_content_path = "/courses/#{course_params}/sections/#{@section.id}/contents/"
  end

  def update
    updated_info = params.require(:section).permit(:title)
    @course = Course.find(params[:course_id])
    @section = @course.sections.find(params[:id])
    @section.update_attributes(updated_info)
    redirect_to edit_course_section_path(@course,@section)
  end

  # def sorted
  #   course = Course.find(params[:course_id])
  #   sections = course.sections
  #   sections.each do |section|
  #   section.position = params['section'].index(section.position.to_s) + 1
  #   section.save
  #   end
  #   render :nothing => true
  # end


  def destroy
    course = Course.find(params[:course_id])
    section = course.sections.find(params[:id])
    section.destroy
    redirect_to new_course_section_path(course)

  end


end
