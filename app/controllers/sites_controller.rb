class SitesController < ApplicationController
  include CoursesHelper

  def index
  @contents = Content.find([13, 10, 5])
  @index_page = true;
  end
end
