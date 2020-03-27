class StudentsController < ApplicationController
  def index
    @students = Student.all
    require "pry"; binding.pry
  end
end
