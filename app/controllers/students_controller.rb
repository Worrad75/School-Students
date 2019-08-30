class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @school = School.find(@student.school_id)
  end

  def new
    @student = Student.new
    @schools = School.all
  end

  def create
    student = Student.create(name: params[:student][:name], age: params[:student][:age], school_id: params[:student][:school_id])
    redirect_to students_path(student)
  end

  def edit
    @student = Student.find(params[:id])
    # @school = School.find()
    @schools = School.all
  end

  def update
    @student = Student.find(params[:id])
    @student.update(name: params[:student][:name], age: params[:student][:age], school_id: params[:student][:school_id])
    redirect_to '/students'
  end

  def delete
    @student = Student.find(params[:id])
    @student.delete
    redirect_to '/students'
  end

  private

    def student_params
      params.require(:student).permit(:name, :age, :school_id)
    end
end
