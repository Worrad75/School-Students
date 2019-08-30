class SchoolsController < ApplicationController
  
  def index
    @schools = School.all
  end

  def show
    # byebug
    @school = School.find(params[:id])
    @students = @school.students
  end
  
end
