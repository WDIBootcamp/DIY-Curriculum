class CoursesController < ApplicationController
  before_filter :authenticate_user!, except: [:browse_all, :index, :show]

  include CoursesHelper

  # my courses
  def index
    allCategories
    createdCourses
    enrolledCourses
    respond_to do |f|
      f.html
      f.json { render :json => @created_courses }
    end
  end

  # browse all available courses
  def browse_all    
    @all_courses = Course.all
    @all_cats = Category.all 
    all_cats_alpha = @all_cats.sort_by!{ |f| f.name.downcase } 
    cats = all_cats_alpha
    div = cats.length/3
    div_two = div * 2
    div_three = div * 3
    @a = cats[0..(("#{div}".to_i)-1)]
    @b = cats[(("#{div}".to_i))..(("#{div_two}".to_i)-1)]
    @c = cats[(("#{div_two}".to_i))..(("#{div_three}".to_i))]
  end

  def show
    allCategories
    @course = Course.find(params[:id])
    @current_user = current_user
    @author = User.find(@course.author_id)
    if current_user == nil
        @enrolled = false
    elsif current_user.id == @course.author_id 
      @ownCourse = true
    elsif current_user.courses.where(:id => @course.id) == []
      @enrolled = false
    else
      @enrolled = true
    end
  end

  def create
    new_course = params.require(:course).permit(:title, :description, :category_id)
    course = Course.create(new_course)
    current_user.courses << course
    course.author_id = current_user.id
    course.save

    #redirect_to the sections index where you can create sections
    redirect_to new_course_section_path(course)
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    updated_info = params.require(:course).permit(:title, :description, :category_id)
    course = Course.find(params[:id])
    course.update_attributes(updated_info)
    redirect_to course_path
  end

  def enroll
    course = Course.find(params[:id])
    current_user.courses << course
    render :json => { result: "enrolled"}
  end

  def unenroll
    course = Course.find(params[:id])
    current_user.courses.delete(course)
    render :json => { result: "unenrolled"}
  end

  def destroy
    Course.find(params[:id]).destroy
    redirect_to courses_path
  end

end

