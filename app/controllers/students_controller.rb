class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
    
  end

  def activate
    
    if @student.active == true
      @student.active = false
    else
      @student.active = true
    end
    activate_student(@student)
  end
  
  private

    def set_student
      @student = Student.find(params[:id])
    end
end